
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_pno_scan_req {int enable; } ;
struct ath10k_vif {int vdev_type; int vdev_id; struct ath10k* ar; } ;
struct ath10k {int nlo_enabled; } ;


 int ENOMEM ;
 int GFP_KERNEL ;

 int ath10k_wmi_wow_config_pno (struct ath10k*,int ,struct wmi_pno_scan_req*) ;
 int kfree (struct wmi_pno_scan_req*) ;
 struct wmi_pno_scan_req* kzalloc (int,int ) ;

__attribute__((used)) static int ath10k_vif_wow_clean_nlo(struct ath10k_vif *arvif)
{
 int ret = 0;
 struct ath10k *ar = arvif->ar;

 switch (arvif->vdev_type) {
 case 128:
  if (ar->nlo_enabled) {
   struct wmi_pno_scan_req *pno;

   pno = kzalloc(sizeof(*pno), GFP_KERNEL);
   if (!pno)
    return -ENOMEM;

   pno->enable = 0;
   ar->nlo_enabled = 0;
   ret = ath10k_wmi_wow_config_pno(ar, arvif->vdev_id, pno);
   kfree(pno);
  }
  break;
 default:
  break;
 }
 return ret;
}
