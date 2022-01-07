
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hermes {int dummy; } ;


 scalar_t__ HERMES_MAGIC ;
 int SWSUPPORT0 ;
 scalar_t__ hermes_read_regn (struct hermes*,int ) ;

__attribute__((used)) static inline int hermes_present(struct hermes *hw)
{
 return hermes_read_regn(hw, SWSUPPORT0) == HERMES_MAGIC;
}
