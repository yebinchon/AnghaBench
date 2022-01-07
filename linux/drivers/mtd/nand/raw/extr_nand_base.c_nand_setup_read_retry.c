
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int read_retries; int (* setup_read_retry ) (struct nand_chip*,int) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int pr_debug (char*,int) ;
 int stub1 (struct nand_chip*,int) ;

__attribute__((used)) static int nand_setup_read_retry(struct nand_chip *chip, int retry_mode)
{
 pr_debug("setting READ RETRY mode %d\n", retry_mode);

 if (retry_mode >= chip->read_retries)
  return -EINVAL;

 if (!chip->setup_read_retry)
  return -EOPNOTSUPP;

 return chip->setup_read_retry(chip, retry_mode);
}
