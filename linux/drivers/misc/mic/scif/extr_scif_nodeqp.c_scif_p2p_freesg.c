
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 int kfree (struct scatterlist*) ;

__attribute__((used)) static void scif_p2p_freesg(struct scatterlist *sg)
{
 kfree(sg);
}
