
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum plip_nibble_state { ____Placeholder_plip_nibble_state } plip_nibble_state ;


 int OK ;
 int PLIP_DELAY_UNIT ;



 int TIMEOUT ;
 unsigned char read_status (struct net_device*) ;
 int udelay (int ) ;
 int write_data (struct net_device*,int) ;

__attribute__((used)) static inline int
plip_receive(unsigned short nibble_timeout, struct net_device *dev,
      enum plip_nibble_state *ns_p, unsigned char *data_p)
{
 unsigned char c0, c1;
 unsigned int cx;

 switch (*ns_p) {
 case 128:
  cx = nibble_timeout;
  while (1) {
   c0 = read_status(dev);
   udelay(PLIP_DELAY_UNIT);
   if ((c0 & 0x80) == 0) {
    c1 = read_status(dev);
    if (c0 == c1)
     break;
   }
   if (--cx == 0)
    return TIMEOUT;
  }
  *data_p = (c0 >> 3) & 0x0f;
  write_data (dev, 0x10);
  *ns_p = 130;


 case 130:
  cx = nibble_timeout;
  while (1) {
   c0 = read_status(dev);
   udelay(PLIP_DELAY_UNIT);
   if (c0 & 0x80) {
    c1 = read_status(dev);
    if (c0 == c1)
     break;
   }
   if (--cx == 0)
    return TIMEOUT;
  }
  *data_p |= (c0 << 1) & 0xf0;
  write_data (dev, 0x00);
  *ns_p = 128;
 case 129:
  break;
 }
 return OK;
}
