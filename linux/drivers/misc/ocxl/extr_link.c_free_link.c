
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_link {int dummy; } ;


 int free_spa (struct ocxl_link*) ;
 int kfree (struct ocxl_link*) ;
 int release_xsl_irq (struct ocxl_link*) ;

__attribute__((used)) static void free_link(struct ocxl_link *link)
{
 release_xsl_irq(link);
 free_spa(link);
 kfree(link);
}
