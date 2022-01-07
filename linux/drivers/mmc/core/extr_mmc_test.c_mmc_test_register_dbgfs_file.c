
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int dummy; } ;


 int S_IRUGO ;
 int S_IWUSR ;
 int __mmc_test_register_dbgfs_file (struct mmc_card*,char*,int,int *) ;
 int mmc_test_fops_test ;
 int mmc_test_lock ;
 int mtf_testlist_fops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mmc_test_register_dbgfs_file(struct mmc_card *card)
{
 int ret;

 mutex_lock(&mmc_test_lock);

 ret = __mmc_test_register_dbgfs_file(card, "test", S_IWUSR | S_IRUGO,
  &mmc_test_fops_test);
 if (ret)
  goto err;

 ret = __mmc_test_register_dbgfs_file(card, "testlist", S_IRUGO,
  &mtf_testlist_fops);
 if (ret)
  goto err;

err:
 mutex_unlock(&mmc_test_lock);

 return ret;
}
