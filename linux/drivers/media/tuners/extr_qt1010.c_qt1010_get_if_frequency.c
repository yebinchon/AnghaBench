
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int qt1010_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 *frequency = 36125000;
 return 0;
}
