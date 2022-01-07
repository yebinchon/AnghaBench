
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fc0013_priv {int dummy; } ;


 int fc0013_readreg (struct fc0013_priv*,int,int*) ;
 int fc0013_writereg (struct fc0013_priv*,int,int) ;

__attribute__((used)) static int fc0013_set_vhf_track(struct fc0013_priv *priv, u32 freq)
{
 int ret;
 u8 tmp;

 ret = fc0013_readreg(priv, 0x1d, &tmp);
 if (ret)
  goto error_out;
 tmp &= 0xe3;
 if (freq <= 177500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x1c);
 } else if (freq <= 184500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x18);
 } else if (freq <= 191500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x14);
 } else if (freq <= 198500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x10);
 } else if (freq <= 205500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x0c);
 } else if (freq <= 219500) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x08);
 } else if (freq < 300000) {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x04);
 } else {
  ret = fc0013_writereg(priv, 0x1d, tmp | 0x1c);
 }
error_out:
 return ret;
}
