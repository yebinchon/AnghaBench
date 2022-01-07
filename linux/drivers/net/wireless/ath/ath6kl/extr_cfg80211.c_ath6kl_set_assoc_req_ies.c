
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath6kl_vif {int fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl {int wmi; int connect_ctrl_flags; } ;


 int CONNECT_WPS_FLAG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WMI_FRAME_ASSOC_REQ ;
 scalar_t__ ath6kl_is_rsn_ie (int const*) ;
 scalar_t__ ath6kl_is_wpa_ie (int const*) ;
 scalar_t__ ath6kl_is_wps_ie (int const*) ;
 int ath6kl_wmi_set_appie_cmd (int ,int ,int ,int*,size_t) ;
 int kfree (int*) ;
 int* kmalloc (size_t,int ) ;
 int memcpy (int*,int const*,int const) ;

__attribute__((used)) static int ath6kl_set_assoc_req_ies(struct ath6kl_vif *vif, const u8 *ies,
        size_t ies_len)
{
 struct ath6kl *ar = vif->ar;
 const u8 *pos;
 u8 *buf = ((void*)0);
 size_t len = 0;
 int ret;





 ar->connect_ctrl_flags &= ~CONNECT_WPS_FLAG;





 if (ies && ies_len) {
  buf = kmalloc(ies_len, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;
  pos = ies;

  while (pos + 1 < ies + ies_len) {
   if (pos + 2 + pos[1] > ies + ies_len)
    break;
   if (!(ath6kl_is_wpa_ie(pos) || ath6kl_is_rsn_ie(pos))) {
    memcpy(buf + len, pos, 2 + pos[1]);
    len += 2 + pos[1];
   }

   if (ath6kl_is_wps_ie(pos))
    ar->connect_ctrl_flags |= CONNECT_WPS_FLAG;

   pos += 2 + pos[1];
  }
 }

 ret = ath6kl_wmi_set_appie_cmd(ar->wmi, vif->fw_vif_idx,
           WMI_FRAME_ASSOC_REQ, buf, len);
 kfree(buf);
 return ret;
}
