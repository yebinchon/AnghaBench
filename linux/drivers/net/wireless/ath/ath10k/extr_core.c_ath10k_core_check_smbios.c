
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* bdf_ext; } ;
struct ath10k {TYPE_1__ id; } ;


 int ENODATA ;
 int ath10k_core_check_bdfext ;
 int dmi_walk (int ,struct ath10k*) ;

__attribute__((used)) static int ath10k_core_check_smbios(struct ath10k *ar)
{
 ar->id.bdf_ext[0] = '\0';
 dmi_walk(ath10k_core_check_bdfext, ar);

 if (ar->id.bdf_ext[0] == '\0')
  return -ENODATA;

 return 0;
}
