
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_service {int dummy; } ;


 int tb_service_get_drvdata (struct tb_service*) ;
 int tbnet_tear_down (int ,int) ;

__attribute__((used)) static void tbnet_shutdown(struct tb_service *svc)
{
 tbnet_tear_down(tb_service_get_drvdata(svc), 1);
}
