
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {TYPE_1__* parent; } ;
struct TYPE_2__ {int ref; } ;


 int hso_serial_ref_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void hso_serial_cleanup(struct tty_struct *tty)
{
 struct hso_serial *serial = tty->driver_data;

 if (!serial)
  return;

 kref_put(&serial->parent->ref, hso_serial_ref_free);
}
