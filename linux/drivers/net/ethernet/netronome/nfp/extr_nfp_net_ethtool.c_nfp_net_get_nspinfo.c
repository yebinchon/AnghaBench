
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int dummy; } ;
struct nfp_app {int cpp; } ;


 int ETHTOOL_FWVERS_LEN ;
 scalar_t__ IS_ERR (struct nfp_nsp*) ;
 int nfp_nsp_close (struct nfp_nsp*) ;
 int nfp_nsp_get_abi_ver_major (struct nfp_nsp*) ;
 int nfp_nsp_get_abi_ver_minor (struct nfp_nsp*) ;
 struct nfp_nsp* nfp_nsp_open (int ) ;
 int snprintf (char*,int ,char*,int ,int ) ;

__attribute__((used)) static void nfp_net_get_nspinfo(struct nfp_app *app, char *version)
{
 struct nfp_nsp *nsp;

 if (!app)
  return;

 nsp = nfp_nsp_open(app->cpp);
 if (IS_ERR(nsp))
  return;

 snprintf(version, ETHTOOL_FWVERS_LEN, "%hu.%hu",
   nfp_nsp_get_abi_ver_major(nsp),
   nfp_nsp_get_abi_ver_minor(nsp));

 nfp_nsp_close(nsp);
}
