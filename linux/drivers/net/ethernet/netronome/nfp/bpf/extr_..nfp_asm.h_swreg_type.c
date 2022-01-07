
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
typedef enum nfp_bpf_reg_type { ____Placeholder_nfp_bpf_reg_type } nfp_bpf_reg_type ;


 int FIELD_GET (int ,int ) ;
 int NN_REG_TYPE ;
 int swreg_raw (int ) ;

__attribute__((used)) static inline enum nfp_bpf_reg_type swreg_type(swreg reg)
{
 return FIELD_GET(NN_REG_TYPE, swreg_raw(reg));
}
