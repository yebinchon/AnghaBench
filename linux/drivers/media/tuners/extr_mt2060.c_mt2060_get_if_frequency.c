
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int IF2 ;

__attribute__((used)) static int mt2060_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 *frequency = IF2 * 1000;
 return 0;
}
