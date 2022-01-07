
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCLGEVF_NAME ;
 int ae_algovf ;
 int hnae3_register_ae_algo (int *) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int hclgevf_init(void)
{
 pr_info("%s is initializing\n", HCLGEVF_NAME);

 hnae3_register_ae_algo(&ae_algovf);

 return 0;
}
