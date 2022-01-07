
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;


 int nfp_tunnel_config_stop (struct nfp_app*) ;

__attribute__((used)) static void nfp_flower_stop(struct nfp_app *app)
{
 nfp_tunnel_config_stop(app);
}
