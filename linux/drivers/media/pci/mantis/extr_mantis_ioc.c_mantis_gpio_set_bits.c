
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mantis_pci {int gpio_status; } ;


 int MANTIS_DEBUG ;
 int MANTIS_GPIF_ADDR ;
 int MANTIS_GPIF_DOUT ;
 int dprintk (int ,int,char*,int,...) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

void mantis_gpio_set_bits(struct mantis_pci *mantis, u32 bitpos, u8 value)
{
 u32 cur;

 dprintk(MANTIS_DEBUG, 1, "Set Bit <%d> to <%d>", bitpos, value);
 cur = mmread(MANTIS_GPIF_ADDR);
 if (value)
  mantis->gpio_status = cur | (1 << bitpos);
 else
  mantis->gpio_status = cur & (~(1 << bitpos));

 dprintk(MANTIS_DEBUG, 1, "GPIO Value <%02x>", mantis->gpio_status);
 mmwrite(mantis->gpio_status, MANTIS_GPIF_ADDR);
 mmwrite(0x00, MANTIS_GPIF_DOUT);
}
