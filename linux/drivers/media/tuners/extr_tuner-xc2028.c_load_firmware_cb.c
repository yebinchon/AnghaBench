
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc2028_data {int state; int fname; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct xc2028_data* tuner_priv; } ;


 int XC2028_ACTIVE ;
 int XC2028_NODEV ;
 int load_all_firmwares (struct dvb_frontend*,struct firmware const*) ;
 int release_firmware (struct firmware const*) ;
 int tuner_dbg (char*,char*) ;
 int tuner_err (char*,int ) ;

__attribute__((used)) static void load_firmware_cb(const struct firmware *fw,
        void *context)
{
 struct dvb_frontend *fe = context;
 struct xc2028_data *priv = fe->tuner_priv;
 int rc;

 tuner_dbg("request_firmware_nowait(): %s\n", fw ? "OK" : "error");
 if (!fw) {
  tuner_err("Could not load firmware %s.\n", priv->fname);
  priv->state = XC2028_NODEV;
  return;
 }

 rc = load_all_firmwares(fe, fw);

 release_firmware(fw);

 if (rc < 0)
  return;
 priv->state = XC2028_ACTIVE;
}
