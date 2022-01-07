
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int contrast; } ;


 int BT848_CONTRAST_LO ;
 int BT848_E_CONTROL ;
 int BT848_O_CONTROL ;
 int btaor (int,int,int ) ;
 int btwrite (int,int ) ;

__attribute__((used)) static void bt848_contrast(struct bttv *btv, int cont)
{
 int value,hibit;

 btv->contrast = cont;


 value = (cont >> 7);
 hibit = (value >> 6) & 4;
 btwrite(value & 0xff, BT848_CONTRAST_LO);
 btaor(hibit, ~4, BT848_E_CONTROL);
 btaor(hibit, ~4, BT848_O_CONTROL);
}
