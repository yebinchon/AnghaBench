
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int dummy; } ;
struct mux_control {int chip; } ;


 struct regmap_field** mux_chip_priv (int ) ;
 size_t mux_control_get_index (struct mux_control*) ;
 int regmap_field_write (struct regmap_field*,int) ;

__attribute__((used)) static int mux_mmio_set(struct mux_control *mux, int state)
{
 struct regmap_field **fields = mux_chip_priv(mux->chip);

 return regmap_field_write(fields[mux_control_get_index(mux)], state);
}
