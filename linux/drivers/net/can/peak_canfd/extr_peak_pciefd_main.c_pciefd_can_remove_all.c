
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciefd_board {size_t can_count; int * can; } ;


 int pciefd_can_remove (int ) ;

__attribute__((used)) static void pciefd_can_remove_all(struct pciefd_board *pciefd)
{
 while (pciefd->can_count > 0)
  pciefd_can_remove(pciefd->can[--pciefd->can_count]);
}
