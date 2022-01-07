
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_device {int boardinfo; } ;
struct octeon_board_info {char* name; char* serial_number; int minor; int major; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int sprintf (int *,char*,char*,char*,int ,int ) ;

__attribute__((used)) static int lio_get_eeprom_len(struct net_device *netdev)
{
 u8 buf[192];
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct_dev = lio->oct_dev;
 struct octeon_board_info *board_info;
 int len;

 board_info = (struct octeon_board_info *)(&oct_dev->boardinfo);
 len = sprintf(buf, "boardname:%s serialnum:%s maj:%lld min:%lld\n",
        board_info->name, board_info->serial_number,
        board_info->major, board_info->minor);

 return len;
}
