
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;


 int EINVAL ;
 int INVERSION_AUTO ;

__attribute__((used)) static int tda8083_set_inversion(struct tda8083_state *state,
     enum fe_spectral_inversion inversion)
{

 if (inversion == INVERSION_AUTO)
  return 0;

 return -EINVAL;
}
