
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_net_fw_version {scalar_t__ resv; scalar_t__ class; scalar_t__ major; scalar_t__ minor; } ;



__attribute__((used)) static inline bool nfp_net_fw_ver_eq(struct nfp_net_fw_version *fw_ver,
         u8 resv, u8 class, u8 major, u8 minor)
{
 return fw_ver->resv == resv &&
        fw_ver->class == class &&
        fw_ver->major == major &&
        fw_ver->minor == minor;
}
