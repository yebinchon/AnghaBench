
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;


 int kfree (struct nfp_app*) ;

void nfp_app_free(struct nfp_app *app)
{
 kfree(app);
}
