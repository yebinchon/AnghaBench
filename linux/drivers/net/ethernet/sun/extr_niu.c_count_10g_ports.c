
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_probe_info {int dummy; } ;


 scalar_t__ port_has_10g (struct phy_probe_info*,int) ;

__attribute__((used)) static int count_10g_ports(struct phy_probe_info *p, int *lowest)
{
 int port, cnt;

 cnt = 0;
 *lowest = 32;
 for (port = 8; port < 32; port++) {
  if (port_has_10g(p, port)) {
   if (!cnt)
    *lowest = port;
   cnt++;
  }
 }

 return cnt;
}
