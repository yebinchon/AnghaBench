
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_eee {int dummy; } ;
struct dsa_switch {int dummy; } ;



__attribute__((used)) static int mv88e6xxx_get_mac_eee(struct dsa_switch *ds, int port,
     struct ethtool_eee *e)
{

 return 0;
}
