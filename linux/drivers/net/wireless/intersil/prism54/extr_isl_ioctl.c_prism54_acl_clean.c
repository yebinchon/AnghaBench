
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct islpci_acl {int dummy; } ;


 int prism54_clear_mac (struct islpci_acl*) ;

void
prism54_acl_clean(struct islpci_acl *acl)
{
 prism54_clear_mac(acl);
}
