
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int dummy; } ;


 int SFP_E_DEV_UP ;
 int sfp_sm_event (struct sfp*,int ) ;

__attribute__((used)) static void sfp_start(struct sfp *sfp)
{
 sfp_sm_event(sfp, SFP_E_DEV_UP);
}
