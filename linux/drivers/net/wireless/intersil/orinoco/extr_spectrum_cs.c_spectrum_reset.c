
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcmcia_device {int dummy; } ;


 int CISREG_CCSR ;
 int CISREG_COR ;
 int COR_SOFT_RESET ;
 int ENODEV ;
 int HCR_IDLE ;
 int HCR_MEM16 ;
 int HCR_RUN ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int pcmcia_read_config_byte (struct pcmcia_device*,int ,int*) ;
 int pcmcia_write_config_byte (struct pcmcia_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
spectrum_reset(struct pcmcia_device *link, int idle)
{
 int ret;
 u8 save_cor;
 u8 ccsr;


 if (!pcmcia_dev_present(link))
  return -ENODEV;


 ret = pcmcia_read_config_byte(link, CISREG_COR, &save_cor);
 if (ret)
  goto failed;


 ret = pcmcia_write_config_byte(link, CISREG_COR,
    (save_cor | COR_SOFT_RESET));
 if (ret)
  goto failed;
 udelay(1000);


 ret = pcmcia_read_config_byte(link, CISREG_CCSR, &ccsr);
 if (ret)
  goto failed;





 ccsr = (idle ? HCR_IDLE : HCR_RUN) | (ccsr & HCR_MEM16);
 ret = pcmcia_write_config_byte(link, CISREG_CCSR, ccsr);
 if (ret)
  goto failed;
 udelay(1000);


 ret = pcmcia_write_config_byte(link, CISREG_COR,
    (save_cor & ~COR_SOFT_RESET));
 if (ret)
  goto failed;
 udelay(1000);
 return 0;

failed:
 return -ENODEV;
}
