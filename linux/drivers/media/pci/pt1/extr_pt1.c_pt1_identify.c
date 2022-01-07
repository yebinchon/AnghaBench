
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt1 {int dummy; } ;


 int pt1_read_reg (struct pt1*,int ) ;
 int pt1_write_reg (struct pt1*,int ,int) ;

__attribute__((used)) static u64 pt1_identify(struct pt1 *pt1)
{
 int i;
 u64 id;
 id = 0;
 for (i = 0; i < 57; i++) {
  id |= (u64)(pt1_read_reg(pt1, 0) >> 30 & 1) << i;
  pt1_write_reg(pt1, 0, 0x00000008);
 }
 return id;
}
