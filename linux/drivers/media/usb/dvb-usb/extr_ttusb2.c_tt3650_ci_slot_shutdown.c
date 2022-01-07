
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {int dummy; } ;


 int tt3650_ci_set_video_port (struct dvb_ca_en50221*,int,int ) ;

__attribute__((used)) static int tt3650_ci_slot_shutdown(struct dvb_ca_en50221 *ca, int slot)
{
 return tt3650_ci_set_video_port(ca, slot, 0);
}
