
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct board_info {int io_data; int io_addr; } ;


 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static u8
ior(struct board_info *db, int reg)
{
 writeb(reg, db->io_addr);
 return readb(db->io_data);
}
