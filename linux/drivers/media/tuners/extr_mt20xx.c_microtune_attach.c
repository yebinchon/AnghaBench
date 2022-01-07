
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {char* name; struct i2c_adapter* adap; int addr; } ;
struct microtune_priv {TYPE_4__ i2c_props; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct TYPE_8__ {TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct microtune_priv* tuner_priv; } ;
typedef int buf ;


 unsigned char ARRAY_SIZE (char**) ;
 int GFP_KERNEL ;


 scalar_t__ debug ;
 struct microtune_priv* kzalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 char** microtune_part ;
 int mt2032_init (struct dvb_frontend*) ;
 int mt2050_init (struct dvb_frontend*) ;
 int strscpy (int ,char*,int) ;
 int tuner_dbg (char*,int,unsigned char*) ;
 int tuner_i2c_xfer_recv (TYPE_4__*,unsigned char*,int) ;
 int tuner_i2c_xfer_send (TYPE_4__*,unsigned char*,int) ;
 int tuner_info (char*,...) ;

struct dvb_frontend *microtune_attach(struct dvb_frontend *fe,
          struct i2c_adapter* i2c_adap,
          u8 i2c_addr)
{
 struct microtune_priv *priv = ((void*)0);
 char *name;
 unsigned char buf[21];
 int company_code;

 priv = kzalloc(sizeof(struct microtune_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);
 fe->tuner_priv = priv;

 priv->i2c_props.addr = i2c_addr;
 priv->i2c_props.adap = i2c_adap;
 priv->i2c_props.name = "mt20xx";



 memset(buf,0,sizeof(buf));

 name = "unknown";

 tuner_i2c_xfer_send(&priv->i2c_props,buf,1);
 tuner_i2c_xfer_recv(&priv->i2c_props,buf,21);
 if (debug)
  tuner_dbg("MT20xx hexdump: %*ph\n", 21, buf);

 company_code = buf[0x11] << 8 | buf[0x12];
 tuner_info("microtune: companycode=%04x part=%02x rev=%02x\n",
     company_code,buf[0x13],buf[0x14]);


 if (buf[0x13] < ARRAY_SIZE(microtune_part) &&
     ((void*)0) != microtune_part[buf[0x13]])
  name = microtune_part[buf[0x13]];
 switch (buf[0x13]) {
 case 129:
  mt2032_init(fe);
  break;
 case 128:
  mt2050_init(fe);
  break;
 default:
  tuner_info("microtune %s found, not (yet?) supported, sorry :-/\n",
      name);
  return ((void*)0);
 }

 strscpy(fe->ops.tuner_ops.info.name, name,
  sizeof(fe->ops.tuner_ops.info.name));
 tuner_info("microtune %s found, OK\n",name);
 return fe;
}
