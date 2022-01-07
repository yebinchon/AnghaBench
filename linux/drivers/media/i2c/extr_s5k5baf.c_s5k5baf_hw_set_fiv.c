
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int REG_P_MAX_FR_TIME (int ) ;
 int s5k5baf_hw_sync_cfg (struct s5k5baf*) ;
 int s5k5baf_write (struct s5k5baf*,int ,int ) ;

__attribute__((used)) static void s5k5baf_hw_set_fiv(struct s5k5baf *state, u16 fiv)
{
 s5k5baf_write(state, REG_P_MAX_FR_TIME(0), fiv);
 s5k5baf_hw_sync_cfg(state);
}
