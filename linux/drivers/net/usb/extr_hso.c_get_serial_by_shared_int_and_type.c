
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hso_shared_int {int dummy; } ;
struct hso_serial {struct hso_shared_int* shared_int; } ;
struct TYPE_3__ {int port_spec; } ;


 int HSO_PORT_MASK ;
 int HSO_SERIAL_TTY_MINORS ;
 struct hso_serial* dev2ser (TYPE_1__*) ;
 int hso_mux_to_port (int) ;
 TYPE_1__** serial_table ;

__attribute__((used)) static struct hso_serial *get_serial_by_shared_int_and_type(
     struct hso_shared_int *shared_int,
     int mux)
{
 int i, port;

 port = hso_mux_to_port(mux);

 for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
  if (serial_table[i] &&
      (dev2ser(serial_table[i])->shared_int == shared_int) &&
      ((serial_table[i]->port_spec & HSO_PORT_MASK) == port)) {
   return dev2ser(serial_table[i]);
  }
 }

 return ((void*)0);
}
