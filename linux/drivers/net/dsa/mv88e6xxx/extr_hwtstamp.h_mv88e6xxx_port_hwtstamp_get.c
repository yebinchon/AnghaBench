
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
struct dsa_switch {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mv88e6xxx_port_hwtstamp_get(struct dsa_switch *ds,
           int port, struct ifreq *ifr)
{
 return -EOPNOTSUPP;
}
