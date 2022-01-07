
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc5 {scalar_t__ mode; int parity_enabled; int adapter; } ;


 int A_MC5_DB_CONFIG ;
 int F_MBUSEN ;
 scalar_t__ MC5_MODE_72_BIT ;
 int V_COMPEN (int) ;
 int V_PRTYEN (int ) ;
 int V_TMMODE (int) ;
 int t3_write_reg (int ,int ,int) ;

__attribute__((used)) static void mc5_dbgi_mode_disable(const struct mc5 *mc5)
{
 t3_write_reg(mc5->adapter, A_MC5_DB_CONFIG,
       V_TMMODE(mc5->mode == MC5_MODE_72_BIT) |
       V_COMPEN(mc5->mode == MC5_MODE_72_BIT) |
       V_PRTYEN(mc5->parity_enabled) | F_MBUSEN);
}
