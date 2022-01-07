
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int client; TYPE_1__* bops; } ;
struct dpot_data {TYPE_2__ bdata; } ;
struct TYPE_3__ {int (* read_r8d16 ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

__attribute__((used)) static inline int dpot_read_r8d16(struct dpot_data *dpot, u8 reg)
{
 return dpot->bdata.bops->read_r8d16(dpot->bdata.client, reg);
}
