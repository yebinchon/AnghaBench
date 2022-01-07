
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bss_descriptor; } ;
struct mwifiex_private {int curr_bcn_buf_lock; TYPE_1__ curr_bss_params; } ;
struct mwifiex_bssdescriptor {struct mwifiex_bssdescriptor* beacon_buf; } ;
struct cfg80211_bss {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mwifiex_bssdescriptor*) ;
 struct mwifiex_bssdescriptor* kzalloc (int,int ) ;
 int memcpy (int *,struct mwifiex_bssdescriptor*,int) ;
 int mwifiex_check_network_compatibility (struct mwifiex_private*,struct mwifiex_bssdescriptor*) ;
 int mwifiex_fill_new_bss_desc (struct mwifiex_private*,struct cfg80211_bss*,struct mwifiex_bssdescriptor*) ;
 int mwifiex_save_curr_bcn (struct mwifiex_private*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int mwifiex_update_curr_bss_params(struct mwifiex_private *priv,
       struct cfg80211_bss *bss)
{
 struct mwifiex_bssdescriptor *bss_desc;
 int ret;


 bss_desc = kzalloc(sizeof(struct mwifiex_bssdescriptor), GFP_KERNEL);
 if (!bss_desc)
  return -ENOMEM;

 ret = mwifiex_fill_new_bss_desc(priv, bss, bss_desc);
 if (ret)
  goto done;

 ret = mwifiex_check_network_compatibility(priv, bss_desc);
 if (ret)
  goto done;

 spin_lock_bh(&priv->curr_bcn_buf_lock);

 memcpy(&priv->curr_bss_params.bss_descriptor, bss_desc,
        sizeof(priv->curr_bss_params.bss_descriptor));




 mwifiex_save_curr_bcn(priv);
 spin_unlock_bh(&priv->curr_bcn_buf_lock);

done:



 kfree(bss_desc->beacon_buf);
 kfree(bss_desc);
 return 0;
}
