
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_info {int dummy; } ;
struct brcmf_cfg80211_connect_info {scalar_t__ resp_ie_len; int * resp_ie; scalar_t__ req_ie_len; int * req_ie; } ;


 struct brcmf_cfg80211_connect_info* cfg_to_conn (struct brcmf_cfg80211_info*) ;
 int kfree (int *) ;

__attribute__((used)) static void brcmf_clear_assoc_ies(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_cfg80211_connect_info *conn_info = cfg_to_conn(cfg);

 kfree(conn_info->req_ie);
 conn_info->req_ie = ((void*)0);
 conn_info->req_ie_len = 0;
 kfree(conn_info->resp_ie);
 conn_info->resp_ie = ((void*)0);
 conn_info->resp_ie_len = 0;
}
