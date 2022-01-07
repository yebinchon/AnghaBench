
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int n_priv_flags; int erom_version; int fw_version; int regdump_len; int bus_info; int version; int driver; } ;
struct TYPE_2__ {int tp_vers; int fw_vers; } ;
struct adapter {TYPE_1__ params; int pdev; } ;


 int ARRAY_SIZE (int ) ;
 int FW_HDR_FW_VER_BUILD_G (int ) ;
 int FW_HDR_FW_VER_MAJOR_G (int ) ;
 int FW_HDR_FW_VER_MICRO_G (int ) ;
 int FW_HDR_FW_VER_MINOR_G (int ) ;
 int cxgb4_driver_name ;
 int cxgb4_driver_version ;
 int cxgb4_priv_flags_strings ;
 int get_regs_len (struct net_device*) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int,int,...) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;
 int t4_get_exprom_version (struct adapter*,int *) ;

__attribute__((used)) static void get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct adapter *adapter = netdev2adap(dev);
 u32 exprom_vers;

 strlcpy(info->driver, cxgb4_driver_name, sizeof(info->driver));
 strlcpy(info->version, cxgb4_driver_version,
  sizeof(info->version));
 strlcpy(info->bus_info, pci_name(adapter->pdev),
  sizeof(info->bus_info));
 info->regdump_len = get_regs_len(dev);

 if (!adapter->params.fw_vers)
  strcpy(info->fw_version, "N/A");
 else
  snprintf(info->fw_version, sizeof(info->fw_version),
    "%u.%u.%u.%u, TP %u.%u.%u.%u",
    FW_HDR_FW_VER_MAJOR_G(adapter->params.fw_vers),
    FW_HDR_FW_VER_MINOR_G(adapter->params.fw_vers),
    FW_HDR_FW_VER_MICRO_G(adapter->params.fw_vers),
    FW_HDR_FW_VER_BUILD_G(adapter->params.fw_vers),
    FW_HDR_FW_VER_MAJOR_G(adapter->params.tp_vers),
    FW_HDR_FW_VER_MINOR_G(adapter->params.tp_vers),
    FW_HDR_FW_VER_MICRO_G(adapter->params.tp_vers),
    FW_HDR_FW_VER_BUILD_G(adapter->params.tp_vers));

 if (!t4_get_exprom_version(adapter, &exprom_vers))
  snprintf(info->erom_version, sizeof(info->erom_version),
    "%u.%u.%u.%u",
    FW_HDR_FW_VER_MAJOR_G(exprom_vers),
    FW_HDR_FW_VER_MINOR_G(exprom_vers),
    FW_HDR_FW_VER_MICRO_G(exprom_vers),
    FW_HDR_FW_VER_BUILD_G(exprom_vers));
 info->n_priv_flags = ARRAY_SIZE(cxgb4_priv_flags_strings);
}
