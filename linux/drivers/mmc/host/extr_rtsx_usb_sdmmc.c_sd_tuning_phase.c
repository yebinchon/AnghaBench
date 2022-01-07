
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_usb_sdmmc {int dummy; } ;


 int MAX_PHASE ;
 int sd_tuning_rx_cmd (struct rtsx_usb_sdmmc*,int ,int ) ;

__attribute__((used)) static void sd_tuning_phase(struct rtsx_usb_sdmmc *host,
  u8 opcode, u16 *phase_map)
{
 int err, i;
 u16 raw_phase_map = 0;

 for (i = MAX_PHASE; i >= 0; i--) {
  err = sd_tuning_rx_cmd(host, opcode, (u8)i);
  if (!err)
   raw_phase_map |= 1 << i;
 }

 if (phase_map)
  *phase_map = raw_phase_map;
}
