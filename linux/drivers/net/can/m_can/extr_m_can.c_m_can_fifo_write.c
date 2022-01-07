
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct m_can_classdev {TYPE_2__* ops; TYPE_1__* mcfg; } ;
struct TYPE_4__ {int (* write_fifo ) (struct m_can_classdev*,int,int) ;} ;
struct TYPE_3__ {int off; } ;


 size_t MRAM_TXB ;
 int TXB_ELEMENT_SIZE ;
 int stub1 (struct m_can_classdev*,int,int) ;

__attribute__((used)) static void m_can_fifo_write(struct m_can_classdev *cdev,
        u32 fpi, unsigned int offset, u32 val)
{
 u32 addr_offset = cdev->mcfg[MRAM_TXB].off + fpi * TXB_ELEMENT_SIZE +
     offset;

 cdev->ops->write_fifo(cdev, addr_offset, val);
}
