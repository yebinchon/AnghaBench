
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ddb_port {int type; int en; TYPE_1__* dvb; } ;
struct TYPE_2__ {int adap; } ;






 int ENODEV ;
 int ci_attach (struct ddb_port*) ;
 int ci_cxd2099_attach (struct ddb_port*,int ) ;
 int ci_xo2_attach (struct ddb_port*) ;
 int dvb_ca_en50221_init (int ,int ,int ,int) ;

int ddb_ci_attach(struct ddb_port *port, u32 bitrate)
{
 int ret;

 switch (port->type) {
 case 131:
  ret = ci_cxd2099_attach(port, bitrate);
  if (ret)
   return -ENODEV;
  break;
 case 130:
 case 129:
  ci_xo2_attach(port);
  break;
 case 128:
  ci_attach(port);
  break;
 default:
  return -ENODEV;
 }

 if (!port->en)
  return -ENODEV;
 dvb_ca_en50221_init(port->dvb[0].adap, port->en, 0, 1);
 return 0;
}
