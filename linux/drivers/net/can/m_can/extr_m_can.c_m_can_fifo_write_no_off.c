
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct m_can_classdev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_fifo ) (struct m_can_classdev*,int ,int ) ;} ;


 int stub1 (struct m_can_classdev*,int ,int ) ;

__attribute__((used)) static inline void m_can_fifo_write_no_off(struct m_can_classdev *cdev,
        u32 fpi, u32 val)
{
 cdev->ops->write_fifo(cdev, fpi, val);
}
