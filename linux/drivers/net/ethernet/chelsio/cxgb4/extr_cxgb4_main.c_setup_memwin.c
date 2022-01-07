
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int MEMWIN_NIC ;
 int t4_get_util_window (struct adapter*) ;
 int t4_setup_memwin (struct adapter*,int ,int ) ;

__attribute__((used)) static void setup_memwin(struct adapter *adap)
{
 u32 nic_win_base = t4_get_util_window(adap);

 t4_setup_memwin(adap, nic_win_base, MEMWIN_NIC);
}
