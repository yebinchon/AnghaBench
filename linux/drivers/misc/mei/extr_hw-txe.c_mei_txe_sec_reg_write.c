
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_txe_hw {int aliveness; } ;


 int WARN (int,char*) ;
 int mei_txe_sec_reg_write_silent (struct mei_txe_hw*,unsigned long,int ) ;

__attribute__((used)) static inline void mei_txe_sec_reg_write(struct mei_txe_hw *hw,
    unsigned long offset, u32 value)
{
 WARN(!hw->aliveness, "sec write: aliveness not asserted\n");
 mei_txe_sec_reg_write_silent(hw, offset, value);
}
