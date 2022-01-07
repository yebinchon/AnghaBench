
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int deb_info (char*) ;

__attribute__((used)) static int cinergyt2_fe_sleep(struct dvb_frontend *fe)
{
 deb_info("cinergyt2_fe_sleep() Called\n");
 return 0;
}
