
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds990x_chip {int again_meas; int lux_clear; int a_max_result; int again_next; int pdrive; int pdiode; int pgain; } ;


 int APDS990X_CONTROL ;
 int APDS990X_MAX_AGAIN ;
 int APDS_LUX_GAIN_LO_LIMIT ;
 int APDS_LUX_GAIN_LO_LIMIT_STRICT ;
 int ERANGE ;
 int apds990x_force_a_refresh (struct apds990x_chip*) ;
 int apds990x_refresh_athres (struct apds990x_chip*) ;
 int apds990x_write_byte (struct apds990x_chip*,int ,int) ;

__attribute__((used)) static int apds990x_calc_again(struct apds990x_chip *chip)
{
 int curr_again = chip->again_meas;
 int next_again = chip->again_meas;
 int ret = 0;


 if (chip->lux_clear == chip->a_max_result)
  next_again -= 2;
 else if (chip->lux_clear > chip->a_max_result / 2)
  next_again--;
 else if (chip->lux_clear < APDS_LUX_GAIN_LO_LIMIT_STRICT)
  next_again += 2;
 else if (chip->lux_clear < APDS_LUX_GAIN_LO_LIMIT)
  next_again++;


 if (next_again < 0)
  next_again = 0;
 else if (next_again > APDS990X_MAX_AGAIN)
  next_again = APDS990X_MAX_AGAIN;


 if (chip->lux_clear == chip->a_max_result)

  ret = -ERANGE;
 else if (next_again != curr_again &&
  chip->lux_clear < APDS_LUX_GAIN_LO_LIMIT_STRICT)




  ret = -ERANGE;

 chip->again_next = next_again;
 apds990x_write_byte(chip, APDS990X_CONTROL,
   (chip->pdrive << 6) |
   (chip->pdiode << 4) |
   (chip->pgain << 2) |
   (chip->again_next << 0));






 if (ret < 0)
  apds990x_force_a_refresh(chip);
 else
  apds990x_refresh_athres(chip);

 return ret;
}
