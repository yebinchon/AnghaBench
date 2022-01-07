
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct m_can_classdev {TYPE_1__* ops; } ;
typedef enum m_can_reg { ____Placeholder_m_can_reg } m_can_reg ;
struct TYPE_2__ {int (* read_reg ) (struct m_can_classdev*,int) ;} ;


 int stub1 (struct m_can_classdev*,int) ;

__attribute__((used)) static inline u32 m_can_read(struct m_can_classdev *cdev, enum m_can_reg reg)
{
 return cdev->ops->read_reg(cdev, reg);
}
