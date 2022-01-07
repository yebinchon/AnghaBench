
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_internal {int dev; } ;
struct fpga_inode {struct fpga_inode* next_inode; } ;


 struct fpga_inode* find_inode (int ) ;
 struct fpga_inode* fpga_first_inode ;
 int kfree (struct fpga_inode*) ;

__attribute__((used)) static void remove_inode(struct fpga_internal *internal)
{
 struct fpga_inode *prev_node = fpga_first_inode;
 struct fpga_inode *del_node = find_inode(internal->dev);

 if (del_node != ((void*)0)) {
  if (del_node == fpga_first_inode) {
   fpga_first_inode = del_node->next_inode;
  } else {
   while (prev_node->next_inode != del_node)
    prev_node = prev_node->next_inode;

   if (del_node->next_inode == ((void*)0))
    prev_node->next_inode = ((void*)0);
   else
    prev_node->next_inode =
     prev_node->next_inode->next_inode;
  }

  kfree(del_node);
 }
}
