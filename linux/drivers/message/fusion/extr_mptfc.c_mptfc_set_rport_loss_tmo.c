
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fc_rport {scalar_t__ dev_loss_tmo; } ;


 scalar_t__ mptfc_dev_loss_tmo ;

__attribute__((used)) static void
mptfc_set_rport_loss_tmo(struct fc_rport *rport, uint32_t timeout)
{
 if (timeout > 0)
  rport->dev_loss_tmo = timeout;
 else
  rport->dev_loss_tmo = mptfc_dev_loss_tmo;
}
