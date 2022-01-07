
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;
struct TYPE_5__ {int tprev; int fwrev; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct adapter {TYPE_3__ params; } ;


 int DRV_VERSION ;
 int FW_HDR_FW_VER_BUILD_G (int ) ;
 int FW_HDR_FW_VER_MAJOR_G (int ) ;
 int FW_HDR_FW_VER_MICRO_G (int ) ;
 int FW_HDR_FW_VER_MINOR_G (int ) ;
 int KBUILD_MODNAME ;
 struct adapter* netdev2adap (struct net_device*) ;
 int pci_name (int ) ;
 int snprintf (int ,int,char*,int,int,int,int,int,int,int,int) ;
 int strlcpy (int ,int ,int) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void cxgb4vf_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *drvinfo)
{
 struct adapter *adapter = netdev2adap(dev);

 strlcpy(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, pci_name(to_pci_dev(dev->dev.parent)),
  sizeof(drvinfo->bus_info));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%u.%u.%u.%u, TP %u.%u.%u.%u",
   FW_HDR_FW_VER_MAJOR_G(adapter->params.dev.fwrev),
   FW_HDR_FW_VER_MINOR_G(adapter->params.dev.fwrev),
   FW_HDR_FW_VER_MICRO_G(adapter->params.dev.fwrev),
   FW_HDR_FW_VER_BUILD_G(adapter->params.dev.fwrev),
   FW_HDR_FW_VER_MAJOR_G(adapter->params.dev.tprev),
   FW_HDR_FW_VER_MINOR_G(adapter->params.dev.tprev),
   FW_HDR_FW_VER_MICRO_G(adapter->params.dev.tprev),
   FW_HDR_FW_VER_BUILD_G(adapter->params.dev.tprev));
}
