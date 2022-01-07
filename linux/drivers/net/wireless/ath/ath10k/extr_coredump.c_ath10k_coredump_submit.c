
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_dump_file_data {int len; } ;
struct ath10k {int dev; } ;


 int ENODATA ;
 int GFP_KERNEL ;
 struct ath10k_dump_file_data* ath10k_coredump_build (struct ath10k*) ;
 scalar_t__ ath10k_coredump_mask ;
 int ath10k_warn (struct ath10k*,char*) ;
 int dev_coredumpv (int ,struct ath10k_dump_file_data*,int ,int ) ;
 int le32_to_cpu (int ) ;

int ath10k_coredump_submit(struct ath10k *ar)
{
 struct ath10k_dump_file_data *dump;

 if (ath10k_coredump_mask == 0)

  return 0;

 dump = ath10k_coredump_build(ar);
 if (!dump) {
  ath10k_warn(ar, "no crash dump data found for devcoredump");
  return -ENODATA;
 }

 dev_coredumpv(ar->dev, dump, le32_to_cpu(dump->len), GFP_KERNEL);

 return 0;
}
