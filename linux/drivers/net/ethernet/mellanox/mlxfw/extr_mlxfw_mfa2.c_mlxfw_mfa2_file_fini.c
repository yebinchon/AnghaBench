
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxfw_mfa2_file {int dummy; } ;


 int kfree (struct mlxfw_mfa2_file*) ;

void mlxfw_mfa2_file_fini(struct mlxfw_mfa2_file *mfa2_file)
{
 kfree(mfa2_file);
}
