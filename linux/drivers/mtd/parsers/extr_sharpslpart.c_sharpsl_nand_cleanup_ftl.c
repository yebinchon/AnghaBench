
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharpsl_ftl {int log2phy; } ;


 int kfree (int ) ;

__attribute__((used)) static void sharpsl_nand_cleanup_ftl(struct sharpsl_ftl *ftl)
{
 kfree(ftl->log2phy);
}
