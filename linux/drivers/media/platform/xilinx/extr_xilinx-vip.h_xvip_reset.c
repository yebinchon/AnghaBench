
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int dummy; } ;


 int XVIP_CTRL_CONTROL ;
 int XVIP_CTRL_CONTROL_SW_RESET ;
 int xvip_write (struct xvip_device*,int ,int ) ;

__attribute__((used)) static inline void xvip_reset(struct xvip_device *xvip)
{
 xvip_write(xvip, XVIP_CTRL_CONTROL, XVIP_CTRL_CONTROL_SW_RESET);
}
