
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_entry {int dummy; } ;


 int PAGE_SIZE ;
 int roundup (int,int ) ;

__attribute__((used)) static int genwqe_sgl_size(int num_pages)
{
 int len, num_tlb = num_pages / 7;

 len = sizeof(struct sg_entry) * (num_pages+num_tlb + 1);
 return roundup(len, PAGE_SIZE);
}
