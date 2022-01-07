
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct ks8995_switch {int dummy; } ;


 int ks8995_write (struct ks8995_switch*,char*,char,int) ;

__attribute__((used)) static inline int ks8995_write_reg(struct ks8995_switch *ks, u8 addr, u8 val)
{
 char buf = val;

 return ks8995_write(ks, &buf, addr, 1) != 1;
}
