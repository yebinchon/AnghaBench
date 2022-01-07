
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_internal {int dummy; } ;
struct fpga_inode {struct fpga_inode* next_inode; struct fpga_internal* internal; } ;


 scalar_t__ check_filter (struct fpga_internal*,void*,int) ;
 struct fpga_inode* fpga_first_inode ;

__attribute__((used)) static struct fpga_inode *find_dinode(void *demux_dev)
{
 struct fpga_inode *temp_chip = fpga_first_inode;
 struct fpga_internal *temp_int;





 while (temp_chip != ((void*)0)) {
  if (temp_chip->internal != ((void*)0)) {
   temp_int = temp_chip->internal;
   if (check_filter(temp_int, demux_dev, 0))
    break;
   if (check_filter(temp_int, demux_dev, 1))
    break;
  }

  temp_chip = temp_chip->next_inode;
 }

 return temp_chip;
}
