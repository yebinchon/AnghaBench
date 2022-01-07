
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend_tune_settings {int min_delay_ms; int step_size; int max_drift; } ;
struct TYPE_2__ {scalar_t__* delsys; } ;
struct dvb_frontend {TYPE_1__ ops; } ;


 scalar_t__ SYS_ISDBS ;

__attribute__((used)) static int tc90522_get_tune_settings(struct dvb_frontend *fe,
 struct dvb_frontend_tune_settings *settings)
{
 if (fe->ops.delsys[0] == SYS_ISDBS) {
  settings->min_delay_ms = 250;
  settings->step_size = 1000;
  settings->max_drift = settings->step_size * 2;
 } else {
  settings->min_delay_ms = 400;
  settings->step_size = 142857;
  settings->max_drift = settings->step_size;
 }
 return 0;
}
