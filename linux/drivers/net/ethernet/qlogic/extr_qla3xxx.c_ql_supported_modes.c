
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int flags; } ;


 int QL_LINK_OPTICAL ;
 int SUPPORTED_OPTICAL_MODES ;
 int SUPPORTED_TP_MODES ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 ql_supported_modes(struct ql3_adapter *qdev)
{
 if (test_bit(QL_LINK_OPTICAL, &qdev->flags))
  return SUPPORTED_OPTICAL_MODES;

 return SUPPORTED_TP_MODES;
}
