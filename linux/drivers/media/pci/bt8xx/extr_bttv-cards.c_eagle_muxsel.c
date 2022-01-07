
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_ADC ;
 int BT848_ADC_C_SLEEP ;
 int BT848_CONTROL_COMP ;
 int BT848_E_CONTROL ;
 int BT848_O_CONTROL ;
 int LM1882_SYNC_DRIVE ;
 int btand (int ,int ) ;
 int btor (int ,int ) ;
 int gpio_bits (int,int) ;

__attribute__((used)) static void eagle_muxsel(struct bttv *btv, unsigned int input)
{
 gpio_bits(3, input & 3);



 btor(BT848_ADC_C_SLEEP, BT848_ADC);

 btand(~BT848_CONTROL_COMP, BT848_E_CONTROL);
 btand(~BT848_CONTROL_COMP, BT848_O_CONTROL);


 gpio_bits(LM1882_SYNC_DRIVE,LM1882_SYNC_DRIVE);
}
