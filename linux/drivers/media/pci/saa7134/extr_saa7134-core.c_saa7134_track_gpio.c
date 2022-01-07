
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int name; } ;


 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int core_dbg (char*,int ,unsigned long,unsigned long,unsigned long,char const*) ;
 int gpio_tracking ;
 int saa_andorb (int ,int ,int ) ;
 int saa_readl (int) ;

void saa7134_track_gpio(struct saa7134_dev *dev, const char *msg)
{
 unsigned long mode,status;

 if (!gpio_tracking)
  return;

 saa_andorb(SAA7134_GPIO_GPMODE3,SAA7134_GPIO_GPRESCAN,0);
 saa_andorb(SAA7134_GPIO_GPMODE3,SAA7134_GPIO_GPRESCAN,SAA7134_GPIO_GPRESCAN);
 mode = saa_readl(SAA7134_GPIO_GPMODE0 >> 2) & 0xfffffff;
 status = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2) & 0xfffffff;
 core_dbg("%s: gpio: mode=0x%07lx in=0x%07lx out=0x%07lx [%s]\n",
        dev->name, mode, (~mode) & status, mode & status, msg);
}
