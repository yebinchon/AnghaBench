
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ae_algo ;
 int hnae3_unregister_ae_algo (int *) ;

__attribute__((used)) static void hclge_exit(void)
{
 hnae3_unregister_ae_algo(&ae_algo);
}
