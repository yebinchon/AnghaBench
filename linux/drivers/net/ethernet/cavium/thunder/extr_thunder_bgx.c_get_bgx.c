
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int dummy; } ;


 struct bgx** bgx_vnic ;
 int max_bgx_per_node ;

__attribute__((used)) static struct bgx *get_bgx(int node, int bgx_idx)
{
 int idx = (node * max_bgx_per_node) + bgx_idx;

 return bgx_vnic[idx];
}
