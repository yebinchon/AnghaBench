
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_vector {int flags; int int_mask; int vector_index; int context; int (* handler ) (int ,int,int) ;struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int INT_BIT_MAS_ ;
 int INT_EN_CLR ;
 int INT_EN_SET ;
 int INT_STS ;
 int INT_STS_R2C ;
 int INT_VEC_EN_ (int ) ;
 int INT_VEC_EN_CLR ;
 int INT_VEC_EN_SET ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR ;
 int LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK ;
 int LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C ;
 int LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR ;
 int LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static irqreturn_t lan743x_intr_entry_isr(int irq, void *ptr)
{
 struct lan743x_vector *vector = ptr;
 struct lan743x_adapter *adapter = vector->adapter;
 irqreturn_t result = IRQ_NONE;
 u32 int_enables;
 u32 int_sts;

 if (vector->flags & LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ) {
  int_sts = lan743x_csr_read(adapter, INT_STS);
 } else if (vector->flags &
     (LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C |
     LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C)) {
  int_sts = lan743x_csr_read(adapter, INT_STS_R2C);
 } else {

  int_sts = vector->int_mask | INT_BIT_MAS_;
 }

 if (!(int_sts & INT_BIT_MAS_))
  goto irq_done;

 if (vector->flags & LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR)

  lan743x_csr_write(adapter,
      INT_VEC_EN_CLR,
      INT_VEC_EN_(vector->vector_index));

 if (vector->flags & LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR)

  lan743x_csr_write(adapter, INT_EN_CLR, INT_BIT_MAS_);

 if (vector->flags & LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK) {
  int_enables = lan743x_csr_read(adapter, INT_EN_SET);
 } else {

  int_enables = vector->int_mask;
 }

 int_sts &= int_enables;
 int_sts &= vector->int_mask;
 if (int_sts) {
  if (vector->handler) {
   vector->handler(vector->context,
     int_sts, vector->flags);
  } else {

   lan743x_csr_write(adapter, INT_EN_CLR,
       vector->int_mask);
  }
  result = IRQ_HANDLED;
 }

 if (vector->flags & LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET)

  lan743x_csr_write(adapter, INT_EN_SET, INT_BIT_MAS_);

 if (vector->flags & LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET)

  lan743x_csr_write(adapter,
      INT_VEC_EN_SET,
      INT_VEC_EN_(vector->vector_index));
irq_done:
 return result;
}
