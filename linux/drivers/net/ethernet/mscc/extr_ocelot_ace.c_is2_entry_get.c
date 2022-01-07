
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vcap_data {int counter_offset; int counter; int tg_sw; } ;
struct TYPE_4__ {int pkts; } ;
struct ocelot_ace_rule {TYPE_1__ stats; TYPE_2__* port; } ;
struct ocelot {int dummy; } ;
struct TYPE_6__ {int counter_width; } ;
struct TYPE_5__ {struct ocelot* ocelot; } ;


 int VCAP_CMD_READ ;
 int VCAP_SEL_COUNTER ;
 int VCAP_TG_HALF ;
 int is2_data_get (struct vcap_data*,int) ;
 int vcap_cache2action (struct ocelot*,struct vcap_data*) ;
 int vcap_data_get (int ,int ,int ) ;
 TYPE_3__ vcap_is2 ;
 int vcap_row_cmd (struct ocelot*,int,int ,int ) ;

__attribute__((used)) static void is2_entry_get(struct ocelot_ace_rule *rule, int ix)
{
 struct ocelot *op = rule->port->ocelot;
 struct vcap_data data;
 int row = (ix / 2);
 u32 cnt;

 vcap_row_cmd(op, row, VCAP_CMD_READ, VCAP_SEL_COUNTER);
 vcap_cache2action(op, &data);
 data.tg_sw = VCAP_TG_HALF;
 is2_data_get(&data, ix);
 cnt = vcap_data_get(data.counter, data.counter_offset,
       vcap_is2.counter_width);

 rule->stats.pkts = cnt;
}
