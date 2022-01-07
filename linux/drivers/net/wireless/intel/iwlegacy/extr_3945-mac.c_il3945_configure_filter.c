
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int filter_flags; } ;
struct il_priv {int mutex; TYPE_1__ staging; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef int __le32 ;


 int CHK (unsigned int,int ) ;
 int D_MAC80211 (char*,unsigned int,unsigned int) ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_OTHER_BSS ;
 int RXON_FILTER_BCON_AWARE_MSK ;
 int RXON_FILTER_CTL2HOST_MSK ;
 int RXON_FILTER_PROMISC_MSK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
il3945_configure_filter(struct ieee80211_hw *hw, unsigned int changed_flags,
   unsigned int *total_flags, u64 multicast)
{
 struct il_priv *il = hw->priv;
 __le32 filter_or = 0, filter_nand = 0;
 D_MAC80211("Enter: changed: 0x%x, total: 0x%x\n", changed_flags,
     *total_flags);

 do { if (*total_flags & (FIF_OTHER_BSS)) filter_or |= (RXON_FILTER_PROMISC_MSK); else filter_nand |= (RXON_FILTER_PROMISC_MSK); } while (0);
 do { if (*total_flags & (FIF_CONTROL)) filter_or |= (RXON_FILTER_CTL2HOST_MSK); else filter_nand |= (RXON_FILTER_CTL2HOST_MSK); } while (0);
 do { if (*total_flags & (FIF_BCN_PRBRESP_PROMISC)) filter_or |= (RXON_FILTER_BCON_AWARE_MSK); else filter_nand |= (RXON_FILTER_BCON_AWARE_MSK); } while (0);



 mutex_lock(&il->mutex);

 il->staging.filter_flags &= ~filter_nand;
 il->staging.filter_flags |= filter_or;







 mutex_unlock(&il->mutex);







 *total_flags &=
     FIF_OTHER_BSS | FIF_ALLMULTI |
     FIF_BCN_PRBRESP_PROMISC | FIF_CONTROL;
}
