
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {int dummy; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_vport_stop (struct hclge_vport*) ;

__attribute__((used)) static void hclge_client_stop(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);

 hclge_vport_stop(vport);
}
