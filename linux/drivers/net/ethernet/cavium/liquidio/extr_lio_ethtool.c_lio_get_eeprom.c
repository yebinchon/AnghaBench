
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct octeon_device {int boardinfo; TYPE_1__* pci_dev; } ;
struct octeon_board_info {char* name; char* serial_number; int minor; int major; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ethtool_eeprom {int magic; scalar_t__ offset; } ;
struct TYPE_2__ {int vendor; } ;


 int EINVAL ;
 struct lio* GET_LIO (struct net_device*) ;
 int sprintf (char*,char*,char*,char*,int ,int ) ;

__attribute__((used)) static int
lio_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
        u8 *bytes)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct_dev = lio->oct_dev;
 struct octeon_board_info *board_info;

 if (eeprom->offset)
  return -EINVAL;

 eeprom->magic = oct_dev->pci_dev->vendor;
 board_info = (struct octeon_board_info *)(&oct_dev->boardinfo);
 sprintf((char *)bytes,
  "boardname:%s serialnum:%s maj:%lld min:%lld\n",
  board_info->name, board_info->serial_number,
  board_info->major, board_info->minor);

 return 0;
}
