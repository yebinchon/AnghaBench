
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_fw_status {int dummy; } ;
struct mei_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* fw_status ) (struct mei_device*,struct mei_fw_status*) ;} ;


 int stub1 (struct mei_device*,struct mei_fw_status*) ;

__attribute__((used)) static inline int mei_fw_status(struct mei_device *dev,
    struct mei_fw_status *fw_status)
{
 return dev->ops->fw_status(dev, fw_status);
}
