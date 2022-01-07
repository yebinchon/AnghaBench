
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s5k5baf {int dummy; } ;


 int REG_G_PREV_CFG_ERROR ;
 scalar_t__ s5k5baf_read (struct s5k5baf*,int ) ;
 int s5k5baf_write (struct s5k5baf*,int ,int ) ;

__attribute__((used)) static u16 s5k5baf_get_cfg_error(struct s5k5baf *state)
{
 u16 err = s5k5baf_read(state, REG_G_PREV_CFG_ERROR);
 if (err)
  s5k5baf_write(state, REG_G_PREV_CFG_ERROR, 0);
 return err;
}
