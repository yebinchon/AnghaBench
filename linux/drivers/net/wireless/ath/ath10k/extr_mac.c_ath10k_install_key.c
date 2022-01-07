
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_key_conf {int dummy; } ;
struct ath10k_vif {scalar_t__ nohwcrypt; struct ath10k* ar; } ;
struct ath10k {int install_key_done; int conf_mutex; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int ETIMEDOUT ;
 int HZ ;
 int ath10k_send_key (struct ath10k_vif*,struct ieee80211_key_conf*,int,int const*,int ) ;
 int lockdep_assert_held (int *) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int ath10k_install_key(struct ath10k_vif *arvif,
         struct ieee80211_key_conf *key,
         enum set_key_cmd cmd,
         const u8 *macaddr, u32 flags)
{
 struct ath10k *ar = arvif->ar;
 int ret;
 unsigned long time_left;

 lockdep_assert_held(&ar->conf_mutex);

 reinit_completion(&ar->install_key_done);

 if (arvif->nohwcrypt)
  return 1;

 ret = ath10k_send_key(arvif, key, cmd, macaddr, flags);
 if (ret)
  return ret;

 time_left = wait_for_completion_timeout(&ar->install_key_done, 3 * HZ);
 if (time_left == 0)
  return -ETIMEDOUT;

 return 0;
}
