
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
typedef enum nfp_bpf_lm_mode { ____Placeholder_nfp_bpf_lm_mode } nfp_bpf_lm_mode ;


 int FIELD_GET (int ,int ) ;
 int NN_REG_LM_MOD ;
 int swreg_raw (int ) ;

__attribute__((used)) static inline enum nfp_bpf_lm_mode swreg_lm_mode(swreg reg)
{
 return FIELD_GET(NN_REG_LM_MOD, swreg_raw(reg));
}
