
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int rc; } ;


 int rc_unregister_device (int ) ;

void mantis_input_exit(struct mantis_pci *mantis)
{
 rc_unregister_device(mantis->rc);
}
