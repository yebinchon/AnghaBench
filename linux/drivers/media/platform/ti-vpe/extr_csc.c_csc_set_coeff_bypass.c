
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csc_data {int dummy; } ;


 int CSC_BYPASS ;

void csc_set_coeff_bypass(struct csc_data *csc, u32 *csc_reg5)
{
 *csc_reg5 |= CSC_BYPASS;
}
