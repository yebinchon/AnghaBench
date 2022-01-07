
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int i2c_running; } ;


 int pt1_i2c_emit (struct pt1*,int,int,int ,int,int,int) ;

__attribute__((used)) static void pt1_i2c_begin(struct pt1 *pt1, int *addrp)
{
 int addr;
 addr = 0;

 pt1_i2c_emit(pt1, addr, 0, 0, 1, 1, addr );
 addr = addr + 1;

 if (!pt1->i2c_running) {
  pt1_i2c_emit(pt1, addr, 1, 0, 1, 1, addr + 1);
  pt1_i2c_emit(pt1, addr + 1, 1, 0, 1, 0, addr + 2);
  addr = addr + 2;
  pt1->i2c_running = 1;
 }
 *addrp = addr;
}
