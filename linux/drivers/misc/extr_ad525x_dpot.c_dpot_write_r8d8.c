
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int client; TYPE_1__* bops; } ;
struct dpot_data {TYPE_2__ bdata; } ;
struct TYPE_3__ {int (* write_r8d8 ) (int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static inline int dpot_write_r8d8(struct dpot_data *dpot, u8 reg, u16 val)
{
 return dpot->bdata.bops->write_r8d8(dpot->bdata.client, reg, val);
}
