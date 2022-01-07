
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxfw_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* status_notify ) (struct mlxfw_dev*,char const*,char const*,int ,int ) ;} ;


 int stub1 (struct mlxfw_dev*,char const*,char const*,int ,int ) ;

__attribute__((used)) static void mlxfw_status_notify(struct mlxfw_dev *mlxfw_dev,
    const char *msg, const char *comp_name,
    u32 done_bytes, u32 total_bytes)
{
 if (!mlxfw_dev->ops->status_notify)
  return;
 mlxfw_dev->ops->status_notify(mlxfw_dev, msg, comp_name,
          done_bytes, total_bytes);
}
