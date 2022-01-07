
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int io_data; int io_addr; } ;


 int writeb (int,int ) ;

__attribute__((used)) static void
iow(struct board_info *db, int reg, int value)
{
 writeb(reg, db->io_addr);
 writeb(value, db->io_data);
}
