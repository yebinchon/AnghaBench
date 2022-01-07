
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vin_coeff {unsigned short xs_value; int * coeff_set; } ;
struct rvin_dev {int dummy; } ;


 int ARRAY_SIZE (struct vin_coeff*) ;
 int VNC1A_REG ;
 int VNC1B_REG ;
 int VNC1C_REG ;
 int VNC2A_REG ;
 int VNC2B_REG ;
 int VNC2C_REG ;
 int VNC3A_REG ;
 int VNC3B_REG ;
 int VNC3C_REG ;
 int VNC4A_REG ;
 int VNC4B_REG ;
 int VNC4C_REG ;
 int VNC5A_REG ;
 int VNC5B_REG ;
 int VNC5C_REG ;
 int VNC6A_REG ;
 int VNC6B_REG ;
 int VNC6C_REG ;
 int VNC7A_REG ;
 int VNC7B_REG ;
 int VNC7C_REG ;
 int VNC8A_REG ;
 int VNC8B_REG ;
 int VNC8C_REG ;
 int rvin_write (struct rvin_dev*,int ,int ) ;
 struct vin_coeff* vin_coeff_set ;

__attribute__((used)) static void rvin_set_coeff(struct rvin_dev *vin, unsigned short xs)
{
 int i;
 const struct vin_coeff *p_prev_set = ((void*)0);
 const struct vin_coeff *p_set = ((void*)0);


 for (i = 0; i < ARRAY_SIZE(vin_coeff_set); i++) {
  p_prev_set = p_set;
  p_set = &vin_coeff_set[i];

  if (xs < p_set->xs_value)
   break;
 }


 if (p_prev_set &&
     xs - p_prev_set->xs_value < p_set->xs_value - xs)
  p_set = p_prev_set;


 rvin_write(vin, p_set->coeff_set[0], VNC1A_REG);
 rvin_write(vin, p_set->coeff_set[1], VNC1B_REG);
 rvin_write(vin, p_set->coeff_set[2], VNC1C_REG);

 rvin_write(vin, p_set->coeff_set[3], VNC2A_REG);
 rvin_write(vin, p_set->coeff_set[4], VNC2B_REG);
 rvin_write(vin, p_set->coeff_set[5], VNC2C_REG);

 rvin_write(vin, p_set->coeff_set[6], VNC3A_REG);
 rvin_write(vin, p_set->coeff_set[7], VNC3B_REG);
 rvin_write(vin, p_set->coeff_set[8], VNC3C_REG);

 rvin_write(vin, p_set->coeff_set[9], VNC4A_REG);
 rvin_write(vin, p_set->coeff_set[10], VNC4B_REG);
 rvin_write(vin, p_set->coeff_set[11], VNC4C_REG);

 rvin_write(vin, p_set->coeff_set[12], VNC5A_REG);
 rvin_write(vin, p_set->coeff_set[13], VNC5B_REG);
 rvin_write(vin, p_set->coeff_set[14], VNC5C_REG);

 rvin_write(vin, p_set->coeff_set[15], VNC6A_REG);
 rvin_write(vin, p_set->coeff_set[16], VNC6B_REG);
 rvin_write(vin, p_set->coeff_set[17], VNC6C_REG);

 rvin_write(vin, p_set->coeff_set[18], VNC7A_REG);
 rvin_write(vin, p_set->coeff_set[19], VNC7B_REG);
 rvin_write(vin, p_set->coeff_set[20], VNC7C_REG);

 rvin_write(vin, p_set->coeff_set[21], VNC8A_REG);
 rvin_write(vin, p_set->coeff_set[22], VNC8B_REG);
 rvin_write(vin, p_set->coeff_set[23], VNC8C_REG);
}
