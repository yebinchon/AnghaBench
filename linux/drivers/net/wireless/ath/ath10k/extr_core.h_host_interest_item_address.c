
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ QCA988X_HOST_INTEREST_ADDRESS ;

__attribute__((used)) static inline u32 host_interest_item_address(u32 item_offset)
{
 return QCA988X_HOST_INTEREST_ADDRESS + item_offset;
}
