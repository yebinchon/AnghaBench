
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {int dummy; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_rm_mc_addr_common (struct hclge_vport*,unsigned char const*) ;

__attribute__((used)) static int hclge_rm_mc_addr(struct hnae3_handle *handle,
       const unsigned char *addr)
{
 struct hclge_vport *vport = hclge_get_vport(handle);

 return hclge_rm_mc_addr_common(vport, addr);
}
