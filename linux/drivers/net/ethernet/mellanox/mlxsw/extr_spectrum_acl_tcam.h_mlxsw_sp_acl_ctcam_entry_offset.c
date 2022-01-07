
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index; } ;
struct mlxsw_sp_acl_ctcam_entry {TYPE_1__ parman_item; } ;



__attribute__((used)) static inline unsigned int
mlxsw_sp_acl_ctcam_entry_offset(struct mlxsw_sp_acl_ctcam_entry *centry)
{
 return centry->parman_item.index;
}
