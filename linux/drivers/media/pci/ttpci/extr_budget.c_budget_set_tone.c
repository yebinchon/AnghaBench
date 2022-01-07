
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget {int dummy; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_2__ {scalar_t__ priv; } ;


 int EINVAL ;


 int Set22K (struct budget*,int) ;

__attribute__((used)) static int budget_set_tone(struct dvb_frontend *fe,
      enum fe_sec_tone_mode tone)
{
 struct budget* budget = (struct budget*) fe->dvb->priv;

 switch (tone) {
 case 128:
  Set22K (budget, 1);
  break;

 case 129:
  Set22K (budget, 0);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
