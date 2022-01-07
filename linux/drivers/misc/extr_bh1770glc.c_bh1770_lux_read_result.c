
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int lux_data_raw; } ;


 int bh1770_lux_get_result (struct bh1770_chip*) ;
 int bh1770_lux_raw_to_adjusted (struct bh1770_chip*,int ) ;

__attribute__((used)) static int bh1770_lux_read_result(struct bh1770_chip *chip)
{
 bh1770_lux_get_result(chip);
 return bh1770_lux_raw_to_adjusted(chip, chip->lux_data_raw);
}
