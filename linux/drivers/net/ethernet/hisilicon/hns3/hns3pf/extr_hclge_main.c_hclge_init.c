
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCLGE_NAME ;
 int ae_algo ;
 int hnae3_register_ae_algo (int *) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int hclge_init(void)
{
 pr_info("%s is initializing\n", HCLGE_NAME);

 hnae3_register_ae_algo(&ae_algo);

 return 0;
}
