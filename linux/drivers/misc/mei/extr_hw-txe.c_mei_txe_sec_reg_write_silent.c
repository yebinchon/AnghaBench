
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int * mem_addr; } ;


 size_t SEC_BAR ;
 int mei_txe_reg_write (int ,unsigned long,int ) ;

__attribute__((used)) static inline void mei_txe_sec_reg_write_silent(struct mei_txe_hw *hw,
    unsigned long offset, u32 value)
{
 mei_txe_reg_write(hw->mem_addr[SEC_BAR], offset, value);
}
