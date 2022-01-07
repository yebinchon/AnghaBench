
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int usage; int firmware_status; int startaddr; int num; int name; } ;


 int COSA_FW_DOWNLOAD ;
 int COSA_FW_RESET ;
 int COSA_FW_START ;
 int EIO ;
 int EPERM ;
 int pr_info (char*,int ,int) ;
 int pr_notice (char*,int ,int,...) ;
 int startmicrocode (struct cosa_data*,int) ;

__attribute__((used)) static inline int cosa_start(struct cosa_data *cosa, int address)
{
 int i;

 if (cosa->usage > 1)
  pr_info("cosa%d: WARNING: start microcode requested with cosa->usage > 1 (%d). Odd things may happen.\n",
   cosa->num, cosa->usage);

 if ((cosa->firmware_status & (COSA_FW_RESET|COSA_FW_DOWNLOAD))
  != (COSA_FW_RESET|COSA_FW_DOWNLOAD)) {
  pr_notice("%s: download the microcode and/or reset the card first (status %d)\n",
     cosa->name, cosa->firmware_status);
  return -EPERM;
 }
 cosa->firmware_status &= ~COSA_FW_RESET;
 if ((i=startmicrocode(cosa, address)) < 0) {
  pr_notice("cosa%d: start microcode at 0x%04x failed: %d\n",
     cosa->num, address, i);
  return -EIO;
 }
 pr_info("cosa%d: starting microcode at 0x%04x\n", cosa->num, address);
 cosa->startaddr = address;
 cosa->firmware_status |= COSA_FW_START;
 return 0;
}
