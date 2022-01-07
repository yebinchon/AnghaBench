
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_IMSK1L ;
 int FM_IMSK1U ;
 int FM_IMSK2L ;
 int FM_IMSK2U ;
 int FM_IMSK3L ;
 int FM_IMSK3U ;
 int MW ;
 int outpw (int ,int ) ;

__attribute__((used)) static void disable_formac(struct s_smc *smc)
{

 outpw(FM_A(FM_IMSK1U),MW) ;
 outpw(FM_A(FM_IMSK1L),MW) ;
 outpw(FM_A(FM_IMSK2U),MW) ;
 outpw(FM_A(FM_IMSK2L),MW) ;
 outpw(FM_A(FM_IMSK3U),MW) ;
 outpw(FM_A(FM_IMSK3L),MW) ;
}
