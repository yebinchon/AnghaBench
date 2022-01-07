
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fastrpc_buf_overlap {int end; int start; } ;


 int CMP (int ,int ) ;

__attribute__((used)) static int olaps_cmp(const void *a, const void *b)
{
 struct fastrpc_buf_overlap *pa = (struct fastrpc_buf_overlap *)a;
 struct fastrpc_buf_overlap *pb = (struct fastrpc_buf_overlap *)b;

 int st = CMP(pa->start, pb->start);

 int ed = CMP(pb->end, pa->end);

 return st == 0 ? ed : st;
}
