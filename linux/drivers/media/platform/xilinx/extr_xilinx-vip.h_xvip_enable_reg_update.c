
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int dummy; } ;


 int XVIP_CTRL_CONTROL ;
 int XVIP_CTRL_CONTROL_REG_UPDATE ;
 int xvip_set (struct xvip_device*,int ,int ) ;

__attribute__((used)) static inline void xvip_enable_reg_update(struct xvip_device *xvip)
{
 xvip_set(xvip, XVIP_CTRL_CONTROL, XVIP_CTRL_CONTROL_REG_UPDATE);
}
