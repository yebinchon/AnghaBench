
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_inode {struct fpga_inode* next_inode; TYPE_1__* internal; } ;
struct TYPE_2__ {void* dev; } ;


 struct fpga_inode* fpga_first_inode ;

__attribute__((used)) static struct fpga_inode *find_inode(void *dev)
{
 struct fpga_inode *temp_chip = fpga_first_inode;

 if (temp_chip == ((void*)0))
  return temp_chip;




 while ((temp_chip != ((void*)0)) &&
    (temp_chip->internal->dev != dev))
  temp_chip = temp_chip->next_inode;

 return temp_chip;
}
