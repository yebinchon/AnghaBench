
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rocker_world_ops {scalar_t__ mode; } ;


 int ROCKER_WORLD_OPS_LEN ;
 struct rocker_world_ops** rocker_world_ops ;

__attribute__((used)) static struct rocker_world_ops *rocker_world_ops_find(u8 mode)
{
 int i;

 for (i = 0; i < ROCKER_WORLD_OPS_LEN; i++)
  if (rocker_world_ops[i]->mode == mode)
   return rocker_world_ops[i];
 return ((void*)0);
}
