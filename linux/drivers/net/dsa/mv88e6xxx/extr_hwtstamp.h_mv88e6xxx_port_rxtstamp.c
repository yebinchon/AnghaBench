
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dsa_switch {int dummy; } ;



__attribute__((used)) static inline bool mv88e6xxx_port_rxtstamp(struct dsa_switch *ds, int port,
        struct sk_buff *clone,
        unsigned int type)
{
 return 0;
}
