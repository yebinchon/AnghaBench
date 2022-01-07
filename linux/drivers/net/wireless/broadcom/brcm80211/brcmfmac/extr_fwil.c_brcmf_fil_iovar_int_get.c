
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_if {int dummy; } ;
typedef scalar_t__ s32 ;
typedef int data_le ;
typedef int __le32 ;


 scalar_t__ brcmf_fil_iovar_data_get (struct brcmf_if*,char*,int *,int) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

s32
brcmf_fil_iovar_int_get(struct brcmf_if *ifp, char *name, u32 *data)
{
 __le32 data_le = cpu_to_le32(*data);
 s32 err;

 err = brcmf_fil_iovar_data_get(ifp, name, &data_le, sizeof(data_le));
 if (err == 0)
  *data = le32_to_cpu(data_le);
 return err;
}
