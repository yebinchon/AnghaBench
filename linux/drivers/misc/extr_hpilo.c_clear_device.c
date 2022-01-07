
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int dummy; } ;


 int clear_pending_db (struct ilo_hwinfo*,int) ;

__attribute__((used)) static inline void clear_device(struct ilo_hwinfo *hw)
{

 clear_pending_db(hw, -1);
}
