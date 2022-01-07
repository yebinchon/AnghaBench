
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {TYPE_1__* attr; } ;
struct TYPE_2__ {int fw_version; } ;


 int BFA_VERSION_LEN ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_fw_ver(struct bfa_ioc *ioc, char *fw_ver)
{
 memcpy(fw_ver, ioc->attr->fw_version, BFA_VERSION_LEN);
}
