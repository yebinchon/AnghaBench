
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int BMCR_RESET ;
 int INIT_COMPLETE ;
 int MAC_STATUS ;
 int MAC_STATUS_PCS_SYNCED ;
 int MII_BMCR ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_writephy (struct tg3*,int,int) ;
 int tr32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void tg3_init_bcm8002(struct tg3 *tp)
{
 u32 mac_status = tr32(MAC_STATUS);
 int i;


 if (tg3_flag(tp, INIT_COMPLETE) &&
     !(mac_status & MAC_STATUS_PCS_SYNCED))
  return;


 tg3_writephy(tp, 0x16, 0x8007);


 tg3_writephy(tp, MII_BMCR, BMCR_RESET);



 for (i = 0; i < 500; i++)
  udelay(10);


 tg3_writephy(tp, 0x10, 0x8411);


 tg3_writephy(tp, 0x11, 0x0a10);

 tg3_writephy(tp, 0x18, 0x00a0);
 tg3_writephy(tp, 0x16, 0x41ff);


 tg3_writephy(tp, 0x13, 0x0400);
 udelay(40);
 tg3_writephy(tp, 0x13, 0x0000);

 tg3_writephy(tp, 0x11, 0x0a50);
 udelay(40);
 tg3_writephy(tp, 0x11, 0x0a10);



 for (i = 0; i < 15000; i++)
  udelay(10);




 tg3_writephy(tp, 0x10, 0x8011);
}
