
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_pcr {scalar_t__ sd30_drive_sel_3v3; scalar_t__ sd30_drive_sel_1v8; } ;


 scalar_t__ OUTPUT_3V3 ;
 int SD30_CLK_DRIVE_SEL ;
 int SD30_CMD_DRIVE_SEL ;
 int SD30_DAT_DRIVE_SEL ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,scalar_t__) ;

__attribute__((used)) static void rts5227_fill_driving(struct rtsx_pcr *pcr, u8 voltage)
{
 u8 driving_3v3[4][3] = {
  {0x13, 0x13, 0x13},
  {0x96, 0x96, 0x96},
  {0x7F, 0x7F, 0x7F},
  {0x96, 0x96, 0x96},
 };
 u8 driving_1v8[4][3] = {
  {0x99, 0x99, 0x99},
  {0xAA, 0xAA, 0xAA},
  {0xFE, 0xFE, 0xFE},
  {0xB3, 0xB3, 0xB3},
 };
 u8 (*driving)[3], drive_sel;

 if (voltage == OUTPUT_3V3) {
  driving = driving_3v3;
  drive_sel = pcr->sd30_drive_sel_3v3;
 } else {
  driving = driving_1v8;
  drive_sel = pcr->sd30_drive_sel_1v8;
 }

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD30_CLK_DRIVE_SEL,
   0xFF, driving[drive_sel][0]);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD30_CMD_DRIVE_SEL,
   0xFF, driving[drive_sel][1]);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD30_DAT_DRIVE_SEL,
   0xFF, driving[drive_sel][2]);
}
