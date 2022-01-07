
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tunertype {int stepsize; int name; } ;
struct tuner_simple_priv {struct tunertype* tun; int type; } ;
struct tuner_params {int iffreq; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int TUNER_PARAM_TYPE_DIGITAL ;
 int offset ;
 int simple_config_lookup (struct dvb_frontend*,struct tuner_params*,int*,int*,int*) ;
 int simple_set_dvb (struct dvb_frontend*,int*,int const,int const,int const) ;
 struct tuner_params* simple_tuner_params (struct dvb_frontend*,int ) ;
 int tuner_dbg (char*,int ,int,int,int,int,int) ;
 int tuner_err (char*,int ,int ) ;

__attribute__((used)) static u32 simple_dvb_configure(struct dvb_frontend *fe, u8 *buf,
    const u32 delsys,
    const u32 freq,
    const u32 bw)
{

 struct tuner_simple_priv *priv = fe->tuner_priv;
 struct tunertype *tun = priv->tun;
 struct tuner_params *t_params;
 u8 config, cb;
 u32 div;
 int ret;
 u32 frequency = freq / 62500;

 if (!tun->stepsize) {


  tuner_err("attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\n",
     priv->type, priv->tun->name);
  return 0;
 }

 t_params = simple_tuner_params(fe, TUNER_PARAM_TYPE_DIGITAL);
 ret = simple_config_lookup(fe, t_params, &frequency, &config, &cb);
 if (ret < 0)
  return 0;

 div = ((frequency + t_params->iffreq) * 62500 + offset +
        tun->stepsize/2) / tun->stepsize;

 buf[0] = div >> 8;
 buf[1] = div & 0xff;
 buf[2] = config;
 buf[3] = cb;

 simple_set_dvb(fe, buf, delsys, freq, bw);

 tuner_dbg("%s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\n",
    tun->name, div, buf[0], buf[1], buf[2], buf[3]);


 return (div * tun->stepsize) - t_params->iffreq;
}
