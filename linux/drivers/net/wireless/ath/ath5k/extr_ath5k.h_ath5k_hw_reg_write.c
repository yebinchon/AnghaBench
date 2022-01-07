
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ath5k_hw {scalar_t__ iobase; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void ath5k_hw_reg_write(struct ath5k_hw *ah, u32 val, u16 reg)
{
 iowrite32(val, ah->iobase + reg);
}
