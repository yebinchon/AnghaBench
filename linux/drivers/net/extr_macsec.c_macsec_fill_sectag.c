
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct macsec_tx_sc {int encoding_sa; scalar_t__ encrypt; scalar_t__ scb; scalar_t__ end_station; } ;
struct macsec_secy {scalar_t__ icv_len; int sci; struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {int h_proto; } ;
struct macsec_eth_header {int tci_an; int packet_number; int secure_channel_id; TYPE_1__ eth; } ;


 scalar_t__ DEFAULT_ICV_LEN ;
 int ETH_P_MACSEC ;
 int MACSEC_TCI_C ;
 int MACSEC_TCI_CONFID ;
 int MACSEC_TCI_ES ;
 int MACSEC_TCI_SC ;
 int MACSEC_TCI_SCB ;
 int htonl (int ) ;
 int htons (int ) ;
 int macsec_sectag_len (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void macsec_fill_sectag(struct macsec_eth_header *h,
          const struct macsec_secy *secy, u32 pn,
          bool sci_present)
{
 const struct macsec_tx_sc *tx_sc = &secy->tx_sc;

 memset(&h->tci_an, 0, macsec_sectag_len(sci_present));
 h->eth.h_proto = htons(ETH_P_MACSEC);

 if (sci_present) {
  h->tci_an |= MACSEC_TCI_SC;
  memcpy(&h->secure_channel_id, &secy->sci,
         sizeof(h->secure_channel_id));
 } else {
  if (tx_sc->end_station)
   h->tci_an |= MACSEC_TCI_ES;
  if (tx_sc->scb)
   h->tci_an |= MACSEC_TCI_SCB;
 }

 h->packet_number = htonl(pn);


 if (tx_sc->encrypt)
  h->tci_an |= MACSEC_TCI_CONFID;
 else if (secy->icv_len != DEFAULT_ICV_LEN)
  h->tci_an |= MACSEC_TCI_C;

 h->tci_an |= tx_sc->encoding_sa;
}
