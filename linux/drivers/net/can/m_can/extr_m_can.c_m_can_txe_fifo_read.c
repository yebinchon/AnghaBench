
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct m_can_classdev {TYPE_2__* ops; TYPE_1__* mcfg; } ;
struct TYPE_4__ {int (* read_fifo ) (struct m_can_classdev*,int) ;} ;
struct TYPE_3__ {int off; } ;


 size_t MRAM_TXE ;
 int TXE_ELEMENT_SIZE ;
 int stub1 (struct m_can_classdev*,int) ;

__attribute__((used)) static u32 m_can_txe_fifo_read(struct m_can_classdev *cdev, u32 fgi, u32 offset)
{
 u32 addr_offset = cdev->mcfg[MRAM_TXE].off + fgi * TXE_ELEMENT_SIZE +
     offset;

 return cdev->ops->read_fifo(cdev, addr_offset);
}
