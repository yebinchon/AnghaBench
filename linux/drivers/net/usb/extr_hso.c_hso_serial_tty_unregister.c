
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_serial {int minor; } ;


 int tty_drv ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static void hso_serial_tty_unregister(struct hso_serial *serial)
{
 tty_unregister_device(tty_drv, serial->minor);
}
