
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int dummy; } ;


 int get_device_outbound (struct ilo_hwinfo*) ;
 int is_db_reset (int ) ;

__attribute__((used)) static inline int is_device_reset(struct ilo_hwinfo *hw)
{

 return is_db_reset(get_device_outbound(hw));
}
