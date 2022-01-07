
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_IFORM ;
 int LM1882_SYNC_DRIVE ;
 int btaor (int,int,int ) ;
 int gpio_bits (int ,int ) ;
 int gpio_inout (int,int) ;
 int gpio_write (int) ;

__attribute__((used)) static void init_ids_eagle(struct bttv *btv)
{
 gpio_inout(0xffffff,0xFFFF37);
 gpio_write(0x200020);


 gpio_write(0x200024);


 gpio_bits(LM1882_SYNC_DRIVE,LM1882_SYNC_DRIVE);


 btaor((2)<<5, ~(2<<5), BT848_IFORM);
}
