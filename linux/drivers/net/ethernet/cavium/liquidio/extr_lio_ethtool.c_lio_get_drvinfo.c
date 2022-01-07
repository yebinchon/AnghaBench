
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int liquidio_firmware_version; } ;
struct octeon_device {int pci_dev; TYPE_1__ fw_info; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int ETHTOOL_FWVERS_LEN ;
 struct lio* GET_LIO (struct net_device*) ;
 char* LIQUIDIO_VERSION ;
 int memset (struct ethtool_drvinfo*,int ,int) ;
 int pci_name (int ) ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void
lio_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct lio *lio;
 struct octeon_device *oct;

 lio = GET_LIO(netdev);
 oct = lio->oct_dev;

 memset(drvinfo, 0, sizeof(struct ethtool_drvinfo));
 strcpy(drvinfo->driver, "liquidio");
 strcpy(drvinfo->version, LIQUIDIO_VERSION);
 strncpy(drvinfo->fw_version, oct->fw_info.liquidio_firmware_version,
  ETHTOOL_FWVERS_LEN);
 strncpy(drvinfo->bus_info, pci_name(oct->pci_dev), 32);
}
