
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int hue; } ;


 int BT848_HUE ;
 int btwrite (int,int ) ;

__attribute__((used)) static void bt848_hue(struct bttv *btv, int hue)
{
 int value;

 btv->hue = hue;


 value = (hue >> 8) - 128;
 btwrite(value & 0xff, BT848_HUE);
}
