
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_board_info {int dummy; } ;
struct ef4_nic {int dummy; } ;



__attribute__((used)) static inline int
ef4_init_lm87(struct ef4_nic *efx, const struct i2c_board_info *info,
       const u8 *reg_values)
{
 return 0;
}
