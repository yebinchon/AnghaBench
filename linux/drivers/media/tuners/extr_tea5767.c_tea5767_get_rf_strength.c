
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 scalar_t__ tea5767_read_status (struct dvb_frontend*,unsigned char*) ;
 int tea5767_signal (struct dvb_frontend*,unsigned char*) ;

__attribute__((used)) static int tea5767_get_rf_strength(struct dvb_frontend *fe, u16 *strength)
{
 unsigned char buffer[5];

 *strength = 0;

 if (0 == tea5767_read_status(fe, buffer))
  *strength = tea5767_signal(fe, buffer);

 return 0;
}
