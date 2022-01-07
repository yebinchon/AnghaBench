
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_mgmt_info_element {int id; int len; int data; } ;
typedef enum iw_mgmt_info_element_ids { ____Placeholder_iw_mgmt_info_element_ids } iw_mgmt_info_element_ids ;


 int memcpy (int ,void*,int) ;

__attribute__((used)) static void iw_set_mgmt_info_element(enum iw_mgmt_info_element_ids id,
         struct iw_mgmt_info_element *el,
         void *value, int len)
{
 el->id = id;
 el->len = len;
 memcpy(el->data, value, len);
}
