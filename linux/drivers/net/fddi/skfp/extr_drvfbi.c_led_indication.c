
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct s_smc {struct s_phy* y; } ;
struct s_phy {struct fddi_mib_p* mib; } ;
struct fddi_mib_p {scalar_t__ fddiPORTPCMState; } ;


 int ADDR (int ) ;
 int B0_LED ;
 int LED_GA_OFF ;
 int LED_GA_ON ;
 int LED_GB_OFF ;
 int LED_GB_ON ;
 int LED_MY_OFF ;
 int LED_MY_ON ;
 int LED_Y_OFF ;
 int LED_Y_ON ;
 size_t PA ;
 size_t PB ;
 scalar_t__ PC8_ACTIVE ;
 int outp (int ,int ) ;

__attribute__((used)) static void led_indication(struct s_smc *smc, int led_event)
{



 u_short led_state ;
 struct s_phy *phy ;
 struct fddi_mib_p *mib_a ;
 struct fddi_mib_p *mib_b ;

 phy = &smc->y[PA] ;
 mib_a = phy->mib ;
 phy = &smc->y[PB] ;
 mib_b = phy->mib ;
}
