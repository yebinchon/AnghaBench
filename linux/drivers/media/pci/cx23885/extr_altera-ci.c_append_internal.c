
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_internal {int dummy; } ;
struct fpga_inode {struct fpga_inode* next_inode; struct fpga_internal* internal; } ;


 int GFP_KERNEL ;
 struct fpga_inode* fpga_first_inode ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static struct fpga_inode *append_internal(struct fpga_internal *internal)
{
 struct fpga_inode *new_node = fpga_first_inode;

 if (new_node == ((void*)0)) {
  new_node = kmalloc(sizeof(struct fpga_inode), GFP_KERNEL);
  fpga_first_inode = new_node;
 } else {
  while (new_node->next_inode != ((void*)0))
   new_node = new_node->next_inode;

  new_node->next_inode =
    kmalloc(sizeof(struct fpga_inode), GFP_KERNEL);
  if (new_node->next_inode != ((void*)0))
   new_node = new_node->next_inode;
  else
   new_node = ((void*)0);
 }

 if (new_node != ((void*)0)) {
  new_node->internal = internal;
  new_node->next_inode = ((void*)0);
 }

 return new_node;
}
