
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
typedef int __le16 ;


 int HFA384X_DATA0_OFF ;
 int HFA384X_DATA1_OFF ;
 char HFA384X_INB (int) ;
 int HFA384X_INW_DATA (int) ;

__attribute__((used)) static int hfa384x_from_bap(struct net_device *dev, u16 bap, void *buf,
       int len)
{
 u16 d_off;
 __le16 *pos;

 d_off = (bap == 1) ? HFA384X_DATA1_OFF : HFA384X_DATA0_OFF;
 pos = (__le16 *) buf;

 for ( ; len > 1; len -= 2)
  *pos++ = HFA384X_INW_DATA(d_off);

 if (len & 1)
  *((char *) pos) = HFA384X_INB(d_off);

 return 0;
}
