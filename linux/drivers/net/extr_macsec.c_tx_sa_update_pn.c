
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct macsec_tx_sa {scalar_t__ next_pn; int active; int lock; } ;
struct macsec_secy {int operational; scalar_t__ protect_frames; } ;


 int pr_debug (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u32 tx_sa_update_pn(struct macsec_tx_sa *tx_sa, struct macsec_secy *secy)
{
 u32 pn;

 spin_lock_bh(&tx_sa->lock);
 pn = tx_sa->next_pn;

 tx_sa->next_pn++;
 if (tx_sa->next_pn == 0) {
  pr_debug("PN wrapped, transitioning to !oper\n");
  tx_sa->active = 0;
  if (secy->protect_frames)
   secy->operational = 0;
 }
 spin_unlock_bh(&tx_sa->lock);

 return pn;
}
