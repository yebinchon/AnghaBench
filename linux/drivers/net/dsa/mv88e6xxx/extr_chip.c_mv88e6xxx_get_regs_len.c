
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int dummy; } ;



__attribute__((used)) static int mv88e6xxx_get_regs_len(struct dsa_switch *ds, int port)
{
 return 32 * sizeof(u16);
}
