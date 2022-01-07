
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_TMRS ;
 int FM_TNEG ;
 int inpw (int ) ;

__attribute__((used)) static u_long mac_get_tneg(struct s_smc *smc)
{
 u_long tneg ;

 tneg = (u_long)((long)inpw(FM_A(FM_TNEG))<<5) ;
 return (u_long)((tneg + ((inpw(FM_A(FM_TMRS))>>10)&0x1f)) |
  0xffe00000L) ;
}
