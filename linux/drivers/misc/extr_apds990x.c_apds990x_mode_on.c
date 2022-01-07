
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct apds990x_chip {scalar_t__ prox_en; } ;


 int APDS990X_ENABLE ;
 int APDS990X_EN_AEN ;
 int APDS990X_EN_AIEN ;
 int APDS990X_EN_PEN ;
 int APDS990X_EN_PIEN ;
 int APDS990X_EN_PON ;
 int APDS990X_EN_WEN ;
 int apds990x_write_byte (struct apds990x_chip*,int ,int) ;

__attribute__((used)) static int apds990x_mode_on(struct apds990x_chip *chip)
{

 u8 reg = APDS990X_EN_AIEN | APDS990X_EN_PON | APDS990X_EN_AEN |
  APDS990X_EN_WEN;

 if (chip->prox_en)
  reg |= APDS990X_EN_PIEN | APDS990X_EN_PEN;

 return apds990x_write_byte(chip, APDS990X_ENABLE, reg);
}
