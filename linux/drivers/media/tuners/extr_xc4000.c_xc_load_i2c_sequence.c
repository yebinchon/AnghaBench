
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xc4000_priv {int dummy; } ;
struct dvb_frontend {struct xc4000_priv* tuner_priv; } ;


 int XC_MAX_I2C_WRITE_LENGTH ;
 int msleep (unsigned int) ;
 int xc_send_i2c_data (struct xc4000_priv*,int*,int) ;

__attribute__((used)) static int xc_load_i2c_sequence(struct dvb_frontend *fe, const u8 *i2c_sequence)
{
 struct xc4000_priv *priv = fe->tuner_priv;

 int i, nbytes_to_send, result;
 unsigned int len, pos, index;
 u8 buf[XC_MAX_I2C_WRITE_LENGTH];

 index = 0;
 while ((i2c_sequence[index] != 0xFF) ||
  (i2c_sequence[index + 1] != 0xFF)) {
  len = i2c_sequence[index] * 256 + i2c_sequence[index+1];
  if (len == 0x0000) {



   index += 2;
  } else if (len & 0x8000) {

   msleep(len & 0x7FFF);
   index += 2;
  } else {



   index += 2;
   buf[0] = i2c_sequence[index];
   buf[1] = i2c_sequence[index + 1];
   pos = 2;
   while (pos < len) {
    if ((len - pos) > XC_MAX_I2C_WRITE_LENGTH - 2)
     nbytes_to_send =
      XC_MAX_I2C_WRITE_LENGTH;
    else
     nbytes_to_send = (len - pos + 2);
    for (i = 2; i < nbytes_to_send; i++) {
     buf[i] = i2c_sequence[index + pos +
      i - 2];
    }
    result = xc_send_i2c_data(priv, buf,
     nbytes_to_send);

    if (result != 0)
     return result;

    pos += nbytes_to_send - 2;
   }
   index += len;
  }
 }
 return 0;
}
