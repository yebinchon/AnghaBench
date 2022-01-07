
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks8995_switch {int dummy; } ;


 int ks8995_read (struct ks8995_switch*,int *,int ,int) ;

__attribute__((used)) static inline int ks8995_read_reg(struct ks8995_switch *ks, u8 addr, u8 *buf)
{
 return ks8995_read(ks, buf, addr, 1) != 1;
}
