
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disable_bgt; } ;
struct ubi_device {TYPE_1__ dbg; } ;



__attribute__((used)) static inline int ubi_dbg_is_bgt_disabled(const struct ubi_device *ubi)
{
 return ubi->dbg.disable_bgt;
}
