
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* firmware_path; } ;
struct TYPE_3__ {scalar_t__ fw_alternative_path; } ;


 int BRCMF_FW_ALTPATH_LEN ;
 scalar_t__ brcmf_firmware_path ;
 TYPE_2__ brcmf_mp_global ;
 TYPE_1__* brcmfmac_pdata ;
 int strlcpy (char*,scalar_t__,int ) ;

__attribute__((used)) static void brcmf_mp_attach(void)
{




 strlcpy(brcmf_mp_global.firmware_path, brcmf_firmware_path,
  BRCMF_FW_ALTPATH_LEN);
 if ((brcmfmac_pdata) && (brcmfmac_pdata->fw_alternative_path) &&
     (brcmf_mp_global.firmware_path[0] == '\0')) {
  strlcpy(brcmf_mp_global.firmware_path,
   brcmfmac_pdata->fw_alternative_path,
   BRCMF_FW_ALTPATH_LEN);
 }
}
