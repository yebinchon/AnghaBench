
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 struct scatterlist* kmalloc_array (int,int,int ) ;
 int sg_init_table (struct scatterlist*,int) ;

__attribute__((used)) static struct scatterlist *mmc_alloc_sg(int sg_len, gfp_t gfp)
{
 struct scatterlist *sg;

 sg = kmalloc_array(sg_len, sizeof(*sg), gfp);
 if (sg)
  sg_init_table(sg, sg_len);

 return sg;
}
