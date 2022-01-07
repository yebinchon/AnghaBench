
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int qede_check_notunn_csum (int ) ;
 int qede_check_tunn_csum (int ) ;
 int qede_tunn_exist (int ) ;

__attribute__((used)) static u8 qede_check_csum(u16 flag)
{
 if (!qede_tunn_exist(flag))
  return qede_check_notunn_csum(flag);
 else
  return qede_check_tunn_csum(flag);
}
