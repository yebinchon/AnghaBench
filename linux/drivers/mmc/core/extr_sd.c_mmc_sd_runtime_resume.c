
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int ENOMEDIUM ;
 int _mmc_sd_resume (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static int mmc_sd_runtime_resume(struct mmc_host *host)
{
 int err;

 err = _mmc_sd_resume(host);
 if (err && err != -ENOMEDIUM)
  pr_err("%s: error %d doing runtime resume\n",
   mmc_hostname(host), err);

 return 0;
}
