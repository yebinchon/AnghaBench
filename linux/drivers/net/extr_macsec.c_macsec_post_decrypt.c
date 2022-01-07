
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int InPktsOK; int InPktsDelayed; int InPktsUnchecked; int InPktsInvalid; int InPktsNotValid; int InOctetsValidated; int InOctetsDecrypted; int InPktsLate; } ;
struct pcpu_rx_sc_stats {int syncp; TYPE_2__ stats; } ;
struct macsec_secy {scalar_t__ replay_window; scalar_t__ validate_frames; scalar_t__ replay_protect; } ;
struct macsec_rx_sa {scalar_t__ next_pn; int lock; TYPE_3__* stats; TYPE_1__* sc; } ;
struct macsec_eth_header {int tci_an; } ;
struct TYPE_8__ {int valid; struct macsec_rx_sa* rx_sa; } ;
struct TYPE_7__ {int InPktsOK; int InPktsInvalid; } ;
struct TYPE_5__ {int stats; } ;


 int MACSEC_TCI_C ;
 int MACSEC_TCI_E ;
 scalar_t__ MACSEC_VALIDATE_CHECK ;
 scalar_t__ MACSEC_VALIDATE_DISABLED ;
 scalar_t__ MACSEC_VALIDATE_STRICT ;
 struct macsec_eth_header* macsec_ethhdr (struct sk_buff*) ;
 TYPE_4__* macsec_skb_cb (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int this_cpu_inc (int ) ;
 struct pcpu_rx_sc_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static bool macsec_post_decrypt(struct sk_buff *skb, struct macsec_secy *secy, u32 pn)
{
 struct macsec_rx_sa *rx_sa = macsec_skb_cb(skb)->rx_sa;
 struct pcpu_rx_sc_stats *rxsc_stats = this_cpu_ptr(rx_sa->sc->stats);
 struct macsec_eth_header *hdr = macsec_ethhdr(skb);
 u32 lowest_pn = 0;

 spin_lock(&rx_sa->lock);
 if (rx_sa->next_pn >= secy->replay_window)
  lowest_pn = rx_sa->next_pn - secy->replay_window;




 if (secy->replay_protect && pn < lowest_pn) {
  spin_unlock(&rx_sa->lock);
  u64_stats_update_begin(&rxsc_stats->syncp);
  rxsc_stats->stats.InPktsLate++;
  u64_stats_update_end(&rxsc_stats->syncp);
  return 0;
 }

 if (secy->validate_frames != MACSEC_VALIDATE_DISABLED) {
  u64_stats_update_begin(&rxsc_stats->syncp);
  if (hdr->tci_an & MACSEC_TCI_E)
   rxsc_stats->stats.InOctetsDecrypted += skb->len;
  else
   rxsc_stats->stats.InOctetsValidated += skb->len;
  u64_stats_update_end(&rxsc_stats->syncp);
 }

 if (!macsec_skb_cb(skb)->valid) {
  spin_unlock(&rx_sa->lock);


  if (hdr->tci_an & MACSEC_TCI_C ||
      secy->validate_frames == MACSEC_VALIDATE_STRICT) {
   u64_stats_update_begin(&rxsc_stats->syncp);
   rxsc_stats->stats.InPktsNotValid++;
   u64_stats_update_end(&rxsc_stats->syncp);
   return 0;
  }

  u64_stats_update_begin(&rxsc_stats->syncp);
  if (secy->validate_frames == MACSEC_VALIDATE_CHECK) {
   rxsc_stats->stats.InPktsInvalid++;
   this_cpu_inc(rx_sa->stats->InPktsInvalid);
  } else if (pn < lowest_pn) {
   rxsc_stats->stats.InPktsDelayed++;
  } else {
   rxsc_stats->stats.InPktsUnchecked++;
  }
  u64_stats_update_end(&rxsc_stats->syncp);
 } else {
  u64_stats_update_begin(&rxsc_stats->syncp);
  if (pn < lowest_pn) {
   rxsc_stats->stats.InPktsDelayed++;
  } else {
   rxsc_stats->stats.InPktsOK++;
   this_cpu_inc(rx_sa->stats->InPktsOK);
  }
  u64_stats_update_end(&rxsc_stats->syncp);

  if (pn >= rx_sa->next_pn)
   rx_sa->next_pn = pn + 1;
  spin_unlock(&rx_sa->lock);
 }

 return 1;
}
