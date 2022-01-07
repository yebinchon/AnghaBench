
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,int) ;
 int fls (int) ;

int denali_calc_ecc_bytes(int step_size, int strength)
{

 return DIV_ROUND_UP(strength * fls(step_size * 8), 16) * 2;
}
