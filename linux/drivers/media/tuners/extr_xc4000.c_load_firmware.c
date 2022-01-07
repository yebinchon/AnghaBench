
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct xc4000_priv {int ignore_i2c_write_errors; TYPE_1__* firm; } ;
struct dvb_frontend {struct xc4000_priv* tuner_priv; } ;
struct TYPE_2__ {unsigned char* ptr; } ;


 int seek_firmware (struct dvb_frontend*,unsigned int,int *) ;
 int xc_load_i2c_sequence (struct dvb_frontend*,unsigned char*) ;

__attribute__((used)) static int load_firmware(struct dvb_frontend *fe, unsigned int type,
    v4l2_std_id *id)
{
 struct xc4000_priv *priv = fe->tuner_priv;
 int pos, rc;
 unsigned char *p;

 pos = seek_firmware(fe, type, id);
 if (pos < 0)
  return pos;

 p = priv->firm[pos].ptr;


 priv->ignore_i2c_write_errors = 1;

 rc = xc_load_i2c_sequence(fe, p);

 priv->ignore_i2c_write_errors = 0;

 return rc;
}
