
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds990x_chip {int dummy; } ;


 int APDS990X_PIHTL ;
 int APDS990X_PILTL ;
 scalar_t__ APDS_PROX_DEF_THRES ;
 int apds990x_write_word (struct apds990x_chip*,int ,scalar_t__) ;

__attribute__((used)) static void apds990x_force_p_refresh(struct apds990x_chip *chip)
{

 apds990x_write_word(chip, APDS990X_PILTL, APDS_PROX_DEF_THRES - 1);
 apds990x_write_word(chip, APDS990X_PIHTL, APDS_PROX_DEF_THRES);
}
