
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dummy; } ;


 int gswip_port_fdb (struct dsa_switch*,int,unsigned char const*,int ,int) ;

__attribute__((used)) static int gswip_port_fdb_add(struct dsa_switch *ds, int port,
         const unsigned char *addr, u16 vid)
{
 return gswip_port_fdb(ds, port, addr, vid, 1);
}
