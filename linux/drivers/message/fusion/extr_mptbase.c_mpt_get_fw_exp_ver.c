
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Word; } ;
struct TYPE_6__ {TYPE_1__ FWVersion; } ;
struct TYPE_7__ {TYPE_2__ facts; } ;
typedef TYPE_3__ MPT_ADAPTER ;


 int sprintf (char*,char*,int,int) ;
 int strcat (char*,char*) ;

__attribute__((used)) static void
mpt_get_fw_exp_ver(char *buf, MPT_ADAPTER *ioc)
{
 buf[0] ='\0';
 if ((ioc->facts.FWVersion.Word >> 24) == 0x0E) {
  sprintf(buf, " (Exp %02d%02d)",
   (ioc->facts.FWVersion.Word >> 16) & 0x00FF,
   (ioc->facts.FWVersion.Word >> 8) & 0x1F);


  if ((ioc->facts.FWVersion.Word >> 8) & 0x80)
   strcat(buf, " [MDBG]");
 }
}
