
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int S5P_FIMV_ERR_DEC_MASK ;
 unsigned int S5P_FIMV_ERR_DEC_SHIFT ;

__attribute__((used)) static int s5p_mfc_err_dec_v5(unsigned int err)
{
 return (err & S5P_FIMV_ERR_DEC_MASK) >> S5P_FIMV_ERR_DEC_SHIFT;
}
