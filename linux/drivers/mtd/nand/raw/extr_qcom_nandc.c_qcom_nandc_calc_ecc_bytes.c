
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
qcom_nandc_calc_ecc_bytes(int step_size, int strength)
{
 return strength == 4 ? 12 : 16;
}
