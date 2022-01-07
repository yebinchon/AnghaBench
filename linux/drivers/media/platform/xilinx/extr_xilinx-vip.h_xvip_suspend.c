
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_device {int saved_ctrl; } ;


 int XVIP_CTRL_CONTROL ;
 int XVIP_CTRL_CONTROL_SW_ENABLE ;
 int xvip_read (struct xvip_device*,int ) ;
 int xvip_write (struct xvip_device*,int ,int) ;

__attribute__((used)) static inline void xvip_suspend(struct xvip_device *xvip)
{
 xvip->saved_ctrl = xvip_read(xvip, XVIP_CTRL_CONTROL);
 xvip_write(xvip, XVIP_CTRL_CONTROL,
     xvip->saved_ctrl & ~XVIP_CTRL_CONTROL_SW_ENABLE);
}
