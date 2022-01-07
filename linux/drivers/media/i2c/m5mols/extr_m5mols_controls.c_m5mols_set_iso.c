
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct m5mols_info {int sd; TYPE_1__* iso; } ;
struct TYPE_2__ {scalar_t__ val; } ;


 int AE_ISO ;
 int m5mols_write (int *,int ,scalar_t__) ;

__attribute__((used)) static int m5mols_set_iso(struct m5mols_info *info, int auto_iso)
{
 u32 iso = auto_iso ? 0 : info->iso->val + 1;

 return m5mols_write(&info->sd, AE_ISO, iso);
}
