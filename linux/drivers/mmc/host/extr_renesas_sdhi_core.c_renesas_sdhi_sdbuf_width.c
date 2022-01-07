
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {int dummy; } ;


 int CTL_VERSION ;
 int HOST_MODE ;




 int sd_ctrl_read16 (struct tmio_mmc_host*,int ) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;

__attribute__((used)) static void renesas_sdhi_sdbuf_width(struct tmio_mmc_host *host, int width)
{
 u32 val;





 switch (sd_ctrl_read16(host, CTL_VERSION)) {
 case 130:
  val = (width == 32) ? 0x0001 : 0x0000;
  break;
 case 131:
  val = (width == 32) ? 0x0000 : 0x0001;
  break;
 case 129:
 case 128:
  if (width == 64)
   val = 0x0000;
  else if (width == 32)
   val = 0x0101;
  else
   val = 0x0001;
  break;
 default:

  return;
 }

 sd_ctrl_write16(host, HOST_MODE, val);
}
