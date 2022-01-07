
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_lag {int batch_ver; } ;


 int NFP_FL_LAG_VERSION_MASK ;

__attribute__((used)) static void nfp_fl_increment_version(struct nfp_fl_lag *lag)
{

 lag->batch_ver += 2;
 lag->batch_ver &= NFP_FL_LAG_VERSION_MASK;


 if (!lag->batch_ver)
  lag->batch_ver += 2;
}
