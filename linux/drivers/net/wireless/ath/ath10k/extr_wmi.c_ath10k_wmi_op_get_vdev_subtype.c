
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;
typedef enum wmi_vdev_subtype { ____Placeholder_wmi_vdev_subtype } wmi_vdev_subtype ;


 int ENOTSUPP ;
 int WMI_VDEV_SUBTYPE_LEGACY_NONE ;
 int WMI_VDEV_SUBTYPE_LEGACY_P2P_CLI ;
 int WMI_VDEV_SUBTYPE_LEGACY_P2P_DEV ;
 int WMI_VDEV_SUBTYPE_LEGACY_P2P_GO ;
 int WMI_VDEV_SUBTYPE_LEGACY_PROXY_STA ;
int ath10k_wmi_op_get_vdev_subtype(struct ath10k *ar,
       enum wmi_vdev_subtype subtype)
{
 switch (subtype) {
 case 132:
  return WMI_VDEV_SUBTYPE_LEGACY_NONE;
 case 130:
  return WMI_VDEV_SUBTYPE_LEGACY_P2P_DEV;
 case 131:
  return WMI_VDEV_SUBTYPE_LEGACY_P2P_CLI;
 case 129:
  return WMI_VDEV_SUBTYPE_LEGACY_P2P_GO;
 case 128:
  return WMI_VDEV_SUBTYPE_LEGACY_PROXY_STA;
 case 134:
 case 133:
  return -ENOTSUPP;
 }
 return -ENOTSUPP;
}
