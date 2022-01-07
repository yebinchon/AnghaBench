
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_if {int dummy; } ;
typedef int s32 ;


 int brcmf_fil_iovar_int_get (struct brcmf_if*,char*,int *) ;

__attribute__((used)) static s32 brcmf_btcoex_params_read(struct brcmf_if *ifp, u32 addr, u32 *data)
{
 *data = addr;

 return brcmf_fil_iovar_int_get(ifp, "btc_params", data);
}
