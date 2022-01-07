
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;


 int FIELD_GET (int ,int ) ;
 int NN_REG_LM_IDX_LO ;
 int swreg_raw (int ) ;

__attribute__((used)) static inline bool swreg_lm_idx(swreg reg)
{
 return FIELD_GET(NN_REG_LM_IDX_LO, swreg_raw(reg));
}
