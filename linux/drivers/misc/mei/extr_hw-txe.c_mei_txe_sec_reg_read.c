
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int aliveness; } ;


 int WARN (int,char*) ;
 int mei_txe_sec_reg_read_silent (struct mei_txe_hw*,unsigned long) ;

__attribute__((used)) static inline u32 mei_txe_sec_reg_read(struct mei_txe_hw *hw,
    unsigned long offset)
{
 WARN(!hw->aliveness, "sec read: aliveness not asserted\n");
 return mei_txe_sec_reg_read_silent(hw, offset);
}
