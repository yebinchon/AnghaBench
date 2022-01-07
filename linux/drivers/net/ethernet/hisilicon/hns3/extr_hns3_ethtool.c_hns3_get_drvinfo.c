
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {struct hnae3_handle* ae_handle; } ;
struct hnae3_handle {TYPE_3__* ae_algo; TYPE_4__* pdev; } ;
struct ethtool_drvinfo {char* version; char* driver; char* bus_info; int fw_version; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int (* get_fw_version ) (struct hnae3_handle*) ;} ;
struct TYPE_5__ {int name; } ;


 int ETHTOOL_BUSINFO_LEN ;
 int HNAE3_FW_VERSION_BYTE0_MASK ;
 int HNAE3_FW_VERSION_BYTE0_SHIFT ;
 int HNAE3_FW_VERSION_BYTE1_MASK ;
 int HNAE3_FW_VERSION_BYTE1_SHIFT ;
 int HNAE3_FW_VERSION_BYTE2_MASK ;
 int HNAE3_FW_VERSION_BYTE2_SHIFT ;
 int HNAE3_FW_VERSION_BYTE3_MASK ;
 int HNAE3_FW_VERSION_BYTE3_SHIFT ;
 int hnae3_get_field (int ,int ,int ) ;
 int hns3_driver_version ;
 int netdev_err (struct net_device*,char*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int pci_name (TYPE_4__*) ;
 int snprintf (int ,int,char*,int ,int ,int ,int ) ;
 int strncpy (char*,int ,int) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static void hns3_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *drvinfo)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);
 struct hnae3_handle *h = priv->ae_handle;
 u32 fw_version;

 if (!h->ae_algo->ops->get_fw_version) {
  netdev_err(netdev, "could not get fw version!\n");
  return;
 }

 strncpy(drvinfo->version, hns3_driver_version,
  sizeof(drvinfo->version));
 drvinfo->version[sizeof(drvinfo->version) - 1] = '\0';

 strncpy(drvinfo->driver, h->pdev->driver->name,
  sizeof(drvinfo->driver));
 drvinfo->driver[sizeof(drvinfo->driver) - 1] = '\0';

 strncpy(drvinfo->bus_info, pci_name(h->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->bus_info[ETHTOOL_BUSINFO_LEN - 1] = '\0';

 fw_version = priv->ae_handle->ae_algo->ops->get_fw_version(h);

 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%lu.%lu.%lu.%lu",
   hnae3_get_field(fw_version, HNAE3_FW_VERSION_BYTE3_MASK,
     HNAE3_FW_VERSION_BYTE3_SHIFT),
   hnae3_get_field(fw_version, HNAE3_FW_VERSION_BYTE2_MASK,
     HNAE3_FW_VERSION_BYTE2_SHIFT),
   hnae3_get_field(fw_version, HNAE3_FW_VERSION_BYTE1_MASK,
     HNAE3_FW_VERSION_BYTE1_SHIFT),
   hnae3_get_field(fw_version, HNAE3_FW_VERSION_BYTE0_MASK,
     HNAE3_FW_VERSION_BYTE0_SHIFT));
}
