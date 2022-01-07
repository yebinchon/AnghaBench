
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bttv {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int BT848_ADC ;
 int BT848_ADC_AGC_EN ;
 int BT848_ADC_RESERVED ;
 int BT848_GPIO_DMA_CTL ;
 int BT848_GPIO_DMA_CTL_GPCLKMODE ;
 int btread (int ) ;
 int bttv_I2CRead (struct bttv*,int,int *) ;
 int bttv_I2CWrite (struct bttv*,int,int ,int,int) ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 int btwrite (int,int ) ;
 int gpio_bits (int,int ) ;
 int gpio_inout (int,int) ;
 int gpio_write (int) ;
 int pr_info (char*,...) ;
 int udelay (int) ;

__attribute__((used)) static void init_PXC200(struct bttv *btv)
{
 static int vals[] = { 0x08, 0x09, 0x0a, 0x0b, 0x0d, 0x0d, 0x01, 0x02,
         0x03, 0x04, 0x05, 0x06, 0x00 };
 unsigned int i;
 int tmp;
 u32 val;


 gpio_inout(0xffffff, (1<<13));
 gpio_write(0);
 udelay(3);
 gpio_write(1<<13);


 gpio_bits(0xffffff, 0);
 if (bttv_gpio)
  bttv_gpio_tracking(btv,"pxc200");
 btwrite(BT848_ADC_RESERVED|BT848_ADC_AGC_EN, BT848_ADC);


 pr_info("Setting DAC reference voltage level ...\n");
 bttv_I2CWrite(btv,0x5E,0,0x80,1);







 pr_info("Initialising 12C508 PIC chip ...\n");


 val = btread(BT848_GPIO_DMA_CTL);
 val |= BT848_GPIO_DMA_CTL_GPCLKMODE;
 btwrite(val, BT848_GPIO_DMA_CTL);





 gpio_inout(0xffffff,(1<<2));
 gpio_write(0);
 udelay(10);
 gpio_write(1<<2);

 for (i = 0; i < ARRAY_SIZE(vals); i++) {
  tmp=bttv_I2CWrite(btv,0x1E,0,vals[i],1);
  if (tmp != -1) {
   pr_info("I2C Write(%2.2x) = %i\nI2C Read () = %2.2x\n\n",
          vals[i],tmp,bttv_I2CRead(btv,0x1F,((void*)0)));
  }
 }

 pr_info("PXC200 Initialised\n");
}
