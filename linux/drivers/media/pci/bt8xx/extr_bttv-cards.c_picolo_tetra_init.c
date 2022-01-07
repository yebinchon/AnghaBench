
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_GPIO_DATA ;
 int btwrite (int,int ) ;

__attribute__((used)) static void picolo_tetra_init(struct bttv *btv)
{

 btwrite (0x08<<16,BT848_GPIO_DATA);
 btwrite (0x04<<16,BT848_GPIO_DATA);
}
