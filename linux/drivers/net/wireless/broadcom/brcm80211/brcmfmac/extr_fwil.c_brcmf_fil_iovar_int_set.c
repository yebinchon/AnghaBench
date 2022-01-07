
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_if {int dummy; } ;
typedef int s32 ;
typedef int data_le ;
typedef int __le32 ;


 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int *,int) ;
 int cpu_to_le32 (int ) ;

s32
brcmf_fil_iovar_int_set(struct brcmf_if *ifp, char *name, u32 data)
{
 __le32 data_le = cpu_to_le32(data);

 return brcmf_fil_iovar_data_set(ifp, name, &data_le, sizeof(data_le));
}
