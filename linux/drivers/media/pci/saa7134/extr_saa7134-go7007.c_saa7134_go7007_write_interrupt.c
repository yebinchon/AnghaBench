
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct saa7134_go7007 {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;


 int HPI_ADDR_INTR_STATUS ;
 int HPI_ADDR_INTR_WR_INDEX ;
 int HPI_ADDR_INTR_WR_PARAM ;
 int gpio_read (struct saa7134_dev*,int ,int*) ;
 int gpio_write (struct saa7134_dev*,int ,int) ;
 int msleep (int) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int saa7134_go7007_write_interrupt(struct go7007 *go, int addr, int data)
{
 struct saa7134_go7007 *saa = go->hpi_context;
 struct saa7134_dev *dev = saa->dev;
 int i;
 u16 status_reg;





 for (i = 0; i < 100; ++i) {
  gpio_read(dev, HPI_ADDR_INTR_STATUS, &status_reg);
  if (!(status_reg & 0x0010))
   break;
  msleep(10);
 }
 if (i == 100) {
  pr_err("saa7134-go7007: device is hung, status reg = 0x%04x\n",
   status_reg);
  return -1;
 }
 gpio_write(dev, HPI_ADDR_INTR_WR_PARAM, data);
 gpio_write(dev, HPI_ADDR_INTR_WR_INDEX, addr);

 return 0;
}
