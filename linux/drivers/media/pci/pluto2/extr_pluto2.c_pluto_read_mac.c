
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pluto {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int REG_IMAC ;
 int REG_LMAC ;
 int REG_MMAC ;
 int dev_info (int *,char*,int*) ;
 int pluto_readreg (struct pluto*,int ) ;

__attribute__((used)) static void pluto_read_mac(struct pluto *pluto, u8 *mac)
{
 u32 val = pluto_readreg(pluto, REG_MMAC);
 mac[0] = (val >> 8) & 0xff;
 mac[1] = (val >> 0) & 0xff;

 val = pluto_readreg(pluto, REG_IMAC);
 mac[2] = (val >> 8) & 0xff;
 mac[3] = (val >> 0) & 0xff;

 val = pluto_readreg(pluto, REG_LMAC);
 mac[4] = (val >> 8) & 0xff;
 mac[5] = (val >> 0) & 0xff;

 dev_info(&pluto->pdev->dev, "MAC %pM\n", mac);
}
