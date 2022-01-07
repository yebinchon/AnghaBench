
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ddb_regmap {int dummy; } ;
struct ddb_port {size_t nr; size_t lnr; size_t pnr; int gap; scalar_t__ class; scalar_t__ type; char* name; int i2c; TYPE_1__* dvb; int i2c_gate_lock; int obr; struct ddb* dev; } ;
struct ddb_info {size_t port_num; scalar_t__ type; struct ddb_regmap* regmap; } ;
struct ddb {size_t port_num; TYPE_2__* link; int dev; struct ddb_port* port; int * adap; } ;
struct TYPE_4__ {struct ddb_info* info; } ;
struct TYPE_3__ {int * adap; } ;


 scalar_t__ DDB_CI_EXTERNAL_XO2 ;
 scalar_t__ DDB_CI_EXTERNAL_XO2_B ;
 size_t DDB_MAX_LINK ;





 scalar_t__ DDB_PORT_CI ;
 scalar_t__ DDB_PORT_NONE ;
 int ci_bitrate ;
 int ddb_input_init (struct ddb_port*,int,int,int) ;
 int ddb_output_init (struct ddb_port*,size_t) ;
 int ddb_port_match_i2c (struct ddb_port*) ;
 int ddb_port_match_link_i2c (struct ddb_port*) ;
 int ddb_port_probe (struct ddb_port*) ;
 int dev_info (int ,char*,size_t,size_t,size_t,size_t,char*) ;
 int mutex_init (int *) ;

void ddb_ports_init(struct ddb *dev)
{
 u32 i, l, p;
 struct ddb_port *port;
 const struct ddb_info *info;
 const struct ddb_regmap *rm;

 for (p = l = 0; l < DDB_MAX_LINK; l++) {
  info = dev->link[l].info;
  if (!info)
   continue;
  rm = info->regmap;
  if (!rm)
   continue;
  for (i = 0; i < info->port_num; i++, p++) {
   port = &dev->port[p];
   port->dev = dev;
   port->nr = i;
   port->lnr = l;
   port->pnr = p;
   port->gap = 0xffffffff;
   port->obr = ci_bitrate;
   mutex_init(&port->i2c_gate_lock);

   if (!ddb_port_match_i2c(port)) {
    if (info->type == 130)
     ddb_port_match_link_i2c(port);
   }

   ddb_port_probe(port);

   port->dvb[0].adap = &dev->adap[2 * p];
   port->dvb[1].adap = &dev->adap[2 * p + 1];

   if (port->class == DDB_PORT_NONE && i && p &&
       dev->port[p - 1].type == DDB_CI_EXTERNAL_XO2) {
    port->class = DDB_PORT_CI;
    port->type = DDB_CI_EXTERNAL_XO2_B;
    port->name = "DuoFlex CI_B";
    port->i2c = dev->port[p - 1].i2c;
   }

   dev_info(dev->dev, "Port %u: Link %u, Link Port %u (TAB %u): %s\n",
     port->pnr, port->lnr, port->nr, port->nr + 1,
     port->name);

   if (port->class == DDB_PORT_CI &&
       port->type == DDB_CI_EXTERNAL_XO2) {
    ddb_input_init(port, 2 * i, 0, 2 * i);
    ddb_output_init(port, i);
    continue;
   }

   if (port->class == DDB_PORT_CI &&
       port->type == DDB_CI_EXTERNAL_XO2_B) {
    ddb_input_init(port, 2 * i - 1, 0, 2 * i - 1);
    ddb_output_init(port, i);
    continue;
   }

   if (port->class == DDB_PORT_NONE)
    continue;

   switch (dev->link[l].info->type) {
   case 131:
    if (i >= 2) {
     ddb_input_init(port, 2 + i, 0, 2 + i);
     ddb_input_init(port, 4 + i, 1, 4 + i);
     ddb_output_init(port, i);
     break;
    }
   case 132:
    ddb_input_init(port, 2 * i, 0, 2 * i);
    ddb_input_init(port, 2 * i + 1, 1, 2 * i + 1);
    ddb_output_init(port, i);
    break;
   case 130:
   case 129:
   case 128:
    ddb_input_init(port, 2 * i, 0, 2 * p);
    ddb_input_init(port, 2 * i + 1, 1, 2 * p + 1);
    break;
   default:
    break;
   }
  }
 }
 dev->port_num = p;
}
