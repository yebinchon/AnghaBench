
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc {int dummy; } ;


 int BFA_ADAPTER_MFG_NAME_LEN ;
 int BFA_MFG_NAME ;
 int strncpy (char*,int ,int ) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_manufacturer(struct bfa_ioc *ioc, char *manufacturer)
{
 strncpy(manufacturer, BFA_MFG_NAME, BFA_ADAPTER_MFG_NAME_LEN);
}
