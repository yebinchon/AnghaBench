
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
 int write_data (struct net_device*,unsigned char) ;

__attribute__((used)) static inline int
plip_send(unsigned short nibble_timeout, struct net_device *dev,
   enum plip_nibble_state *ns_p, unsigned char data)
{
 unsigned char c0;
 unsigned int cx;

 switch (*ns_p) {
 case 128:
  write_data (dev, data & 0x0f);
  *ns_p = 130;


 case 130:
  write_data (dev, 0x10 | (data & 0x0f));
  cx = nibble_timeout;
  while (1) {
   c0 = read_status(dev);
   if ((c0 & 0x80) == 0)
    break;
   if (--cx == 0)
    return TIMEOUT;
   udelay(PLIP_DELAY_UNIT);
  }
  write_data (dev, 0x10 | (data >> 4));
  *ns_p = 129;


 case 129:
  write_data (dev, (data >> 4));
  cx = nibble_timeout;
  while (1) {
   c0 = read_status(dev);
   if (c0 & 0x80)
    break;
   if (--cx == 0)
    return TIMEOUT;
   udelay(PLIP_DELAY_UNIT);
  }
  *ns_p = 128;
  return OK;
 }
 return OK;
}
