
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tg3 {int * fw_ver; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 int APE_FW_VERSION_BLDMSK ;
 int APE_FW_VERSION_MAJMSK ;
 int APE_FW_VERSION_MAJSFT ;
 int APE_FW_VERSION_MINMSK ;
 int APE_FW_VERSION_MINSFT ;
 int APE_FW_VERSION_REVMSK ;
 int APE_FW_VERSION_REVSFT ;
 int APE_HAS_NCSI ;
 scalar_t__ TG3PCI_DEVICE_TIGON3_5725 ;
 int TG3_APE_FW_VERSION ;
 scalar_t__ TG3_VER_SIZE ;
 int snprintf (int *,scalar_t__,char*,char*,int,int,int,int) ;
 int strlen (int *) ;
 int tg3_ape_read32 (struct tg3*,int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static void tg3_read_dash_ver(struct tg3 *tp)
{
 int vlen;
 u32 apedata;
 char *fwtype;

 apedata = tg3_ape_read32(tp, TG3_APE_FW_VERSION);

 if (tg3_flag(tp, APE_HAS_NCSI))
  fwtype = "NCSI";
 else if (tp->pdev->device == TG3PCI_DEVICE_TIGON3_5725)
  fwtype = "SMASH";
 else
  fwtype = "DASH";

 vlen = strlen(tp->fw_ver);

 snprintf(&tp->fw_ver[vlen], TG3_VER_SIZE - vlen, " %s v%d.%d.%d.%d",
   fwtype,
   (apedata & APE_FW_VERSION_MAJMSK) >> APE_FW_VERSION_MAJSFT,
   (apedata & APE_FW_VERSION_MINMSK) >> APE_FW_VERSION_MINSFT,
   (apedata & APE_FW_VERSION_REVMSK) >> APE_FW_VERSION_REVSFT,
   (apedata & APE_FW_VERSION_BLDMSK));
}
