
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int * mac_addr; } ;


 int WMI_VDEV_SUBTYPE_NONE ;
 int WMI_VDEV_TYPE_STA ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_wmi_barrier (struct ath10k*) ;
 int ath10k_wmi_get_vdev_subtype (struct ath10k*,int ) ;
 int ath10k_wmi_vdev_create (struct ath10k*,int,int,int,int const*) ;
 int ath10k_wmi_vdev_delete (struct ath10k*,int) ;

__attribute__((used)) static int ath10k_core_reset_rx_filter(struct ath10k *ar)
{
 int ret;
 int vdev_id;
 int vdev_type;
 int vdev_subtype;
 const u8 *vdev_addr;

 vdev_id = 0;
 vdev_type = WMI_VDEV_TYPE_STA;
 vdev_subtype = ath10k_wmi_get_vdev_subtype(ar, WMI_VDEV_SUBTYPE_NONE);
 vdev_addr = ar->mac_addr;

 ret = ath10k_wmi_vdev_create(ar, vdev_id, vdev_type, vdev_subtype,
         vdev_addr);
 if (ret) {
  ath10k_err(ar, "failed to create dummy vdev: %d\n", ret);
  return ret;
 }

 ret = ath10k_wmi_vdev_delete(ar, vdev_id);
 if (ret) {
  ath10k_err(ar, "failed to delete dummy vdev: %d\n", ret);
  return ret;
 }
 ret = ath10k_wmi_barrier(ar);
 if (ret) {
  ath10k_err(ar, "failed to ping firmware: %d\n", ret);
  return ret;
 }

 return 0;
}
