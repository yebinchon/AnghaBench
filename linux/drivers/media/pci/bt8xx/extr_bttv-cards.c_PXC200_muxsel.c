
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {scalar_t__ cardid; TYPE_1__ c; } ;


 int BT848_GPIO_DATA ;
 int BT848_GPIO_OUT_EN ;
 int BT848_IFORM ;
 int BT848_IFORM_MUXSEL ;
 int PX_CFG_PXC200F ;
 int PX_I2C_PIC ;
 scalar_t__ PX_PXC200A_CARDID ;
 int btand (int ,int ) ;
 int btaor (int,int ,int ) ;
 int btread (int ) ;
 int bttv_I2CRead (struct bttv*,int,int *) ;
 int bttv_I2CWrite (struct bttv*,int,unsigned char,unsigned char,int) ;
 int btwrite (int,int ) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static void PXC200_muxsel(struct bttv *btv, unsigned int input)
{
 int rc;
 long mux;
 int bitmask;
 unsigned char buf[2];



 buf[0]=0;
 buf[1]=0;
 rc=bttv_I2CWrite(btv,(PX_I2C_PIC<<1),buf[0],buf[1],1);
 if (rc) {
  pr_debug("%d: PXC200_muxsel: pic cfg write failed:%d\n",
    btv->c.nr, rc);

  return;
 }

 rc=bttv_I2CRead(btv,(PX_I2C_PIC<<1),((void*)0));
 if (!(rc & PX_CFG_PXC200F)) {
  pr_debug("%d: PXC200_muxsel: not PXC200F rc:%d\n",
    btv->c.nr, rc);
  return;
 }






 mux = input;



 bitmask=0x302;

 if (btv->cardid == PX_PXC200A_CARDID) {
    bitmask ^= 0x180;
    bitmask |= 7<<4;
 }
 btwrite(bitmask, BT848_GPIO_OUT_EN);

 bitmask = btread(BT848_GPIO_DATA);
 if (btv->cardid == PX_PXC200A_CARDID)
   bitmask = (bitmask & ~0x280) | ((mux & 2) << 8) | ((mux & 1) << 7);
 else
   bitmask = (bitmask & ~0x300) | ((mux & 3) << 8);
 btwrite(bitmask,BT848_GPIO_DATA);
 if (btv->cardid == PX_PXC200A_CARDID)
   btaor(2<<5, ~BT848_IFORM_MUXSEL, BT848_IFORM);
 else
   btand(~BT848_IFORM_MUXSEL,BT848_IFORM);

 pr_debug("%d: setting input channel to:%d\n", btv->c.nr, (int)mux);
}
