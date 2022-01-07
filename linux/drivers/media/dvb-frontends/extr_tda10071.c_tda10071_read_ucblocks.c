
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_3__ {scalar_t__ scale; int uvalue; } ;


 scalar_t__ FE_SCALE_COUNTER ;

__attribute__((used)) static int tda10071_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 if (c->block_error.stat[0].scale == FE_SCALE_COUNTER)
  *ucblocks = c->block_error.stat[0].uvalue;
 else
  *ucblocks = 0;
 return 0;
}
