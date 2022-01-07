
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {scalar_t__ rc; } ;


 int RC_PROTO_UNKNOWN ;
 int rc_keydown (scalar_t__,int ,int,int ) ;

void mantis_input_process(struct mantis_pci *mantis, int scancode)
{
 if (mantis->rc)
  rc_keydown(mantis->rc, RC_PROTO_UNKNOWN, scancode, 0);
}
