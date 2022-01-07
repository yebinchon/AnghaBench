
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath6kl_vif {int fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl {int wmi; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WMI_FRAME_PROBE_RESP ;
 int ath6kl_is_p2p_ie (int const*) ;
 int ath6kl_wmi_set_appie_cmd (int ,int ,int ,int*,size_t) ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int memcpy (int*,int const*,int const) ;

__attribute__((used)) static int ath6kl_set_ap_probe_resp_ies(struct ath6kl_vif *vif,
     const u8 *ies, size_t ies_len)
{
 struct ath6kl *ar = vif->ar;
 const u8 *pos;
 u8 *buf = ((void*)0);
 size_t len = 0;
 int ret;






 if (ies && ies_len) {
  buf = kmalloc(ies_len, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;
  pos = ies;
  while (pos + 1 < ies + ies_len) {
   if (pos + 2 + pos[1] > ies + ies_len)
    break;
   if (!ath6kl_is_p2p_ie(pos)) {
    memcpy(buf + len, pos, 2 + pos[1]);
    len += 2 + pos[1];
   }
   pos += 2 + pos[1];
  }
 }

 ret = ath6kl_wmi_set_appie_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_FRAME_PROBE_RESP, buf, len);
 kfree(buf);
 return ret;
}
