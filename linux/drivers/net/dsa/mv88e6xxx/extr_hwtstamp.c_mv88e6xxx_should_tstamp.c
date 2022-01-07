
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int state; } ;
struct mv88e6xxx_chip {TYPE_1__* info; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; } ;
struct TYPE_2__ {int ptp_support; } ;


 int MV88E6XXX_HWTSTAMP_ENABLED ;
 int * parse_ptp_header (struct sk_buff*,unsigned int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u8 *mv88e6xxx_should_tstamp(struct mv88e6xxx_chip *chip, int port,
       struct sk_buff *skb, unsigned int type)
{
 struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
 u8 *hdr;

 if (!chip->info->ptp_support)
  return ((void*)0);

 hdr = parse_ptp_header(skb, type);
 if (!hdr)
  return ((void*)0);

 if (!test_bit(MV88E6XXX_HWTSTAMP_ENABLED, &ps->state))
  return ((void*)0);

 return hdr;
}
