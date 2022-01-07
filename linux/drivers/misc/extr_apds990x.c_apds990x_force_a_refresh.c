
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds990x_chip {int dummy; } ;


 int APDS990X_AIHTL ;
 int APDS990X_AILTL ;
 int APDS_LUX_DEF_THRES_HI ;
 int APDS_LUX_DEF_THRES_LO ;
 int apds990x_write_word (struct apds990x_chip*,int ,int ) ;

__attribute__((used)) static void apds990x_force_a_refresh(struct apds990x_chip *chip)
{

 apds990x_write_word(chip, APDS990X_AILTL, APDS_LUX_DEF_THRES_LO);
 apds990x_write_word(chip, APDS990X_AIHTL, APDS_LUX_DEF_THRES_HI);
}
