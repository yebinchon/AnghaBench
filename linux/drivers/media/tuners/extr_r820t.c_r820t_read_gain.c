
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct r820t_priv {int dummy; } ;
typedef int data ;


 int r820t_read (struct r820t_priv*,int,int*,int) ;

__attribute__((used)) static int r820t_read_gain(struct r820t_priv *priv)
{
 u8 data[4];
 int rc;

 rc = r820t_read(priv, 0x00, data, sizeof(data));
 if (rc < 0)
  return rc;

 return ((data[3] & 0x08) << 1) + ((data[3] & 0xf0) >> 4);
}
