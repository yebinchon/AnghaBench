
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int dev; scalar_t__ sm_retries; } ;


 int SFP_S_TX_DISABLE ;
 int SFP_S_TX_FAULT ;
 int T_FAULT_RECOVER ;
 int dev_err (int ,char*) ;
 int sfp_sm_next (struct sfp*,int ,int ) ;

__attribute__((used)) static void sfp_sm_fault(struct sfp *sfp, bool warn)
{
 if (sfp->sm_retries && !--sfp->sm_retries) {
  dev_err(sfp->dev,
   "module persistently indicates fault, disabling\n");
  sfp_sm_next(sfp, SFP_S_TX_DISABLE, 0);
 } else {
  if (warn)
   dev_err(sfp->dev, "module transmit fault indicated\n");

  sfp_sm_next(sfp, SFP_S_TX_FAULT, T_FAULT_RECOVER);
 }
}
