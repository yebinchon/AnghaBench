
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int reg_lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void mv88e6xxx_reg_unlock(struct mv88e6xxx_chip *chip)
{
 mutex_unlock(&chip->reg_lock);
}
