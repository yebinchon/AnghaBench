
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_core {TYPE_1__* bus_info; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int dev; } ;


 int be32_to_cpu (scalar_t__) ;
 int dev_dbg (int ,char*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_core_buf_dump_dbg(struct mlxsw_core *mlxsw_core,
        const char *buf, size_t size)
{
 __be32 *m = (__be32 *) buf;
 int i;
 int count = size / sizeof(__be32);

 for (i = count - 1; i >= 0; i--)
  if (m[i])
   break;
 i++;
 count = i ? i : 1;
 for (i = 0; i < count; i += 4)
  dev_dbg(mlxsw_core->bus_info->dev, "%04x - %08x %08x %08x %08x\n",
   i * 4, be32_to_cpu(m[i]), be32_to_cpu(m[i + 1]),
   be32_to_cpu(m[i + 2]), be32_to_cpu(m[i + 3]));
}
