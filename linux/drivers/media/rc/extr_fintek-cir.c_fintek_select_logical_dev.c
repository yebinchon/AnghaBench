
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fintek_dev {int dummy; } ;


 int GCR_LOGICAL_DEV_NO ;
 int fintek_cr_write (struct fintek_dev*,int ,int ) ;

__attribute__((used)) static inline void fintek_select_logical_dev(struct fintek_dev *fintek, u8 ldev)
{
 fintek_cr_write(fintek, ldev, GCR_LOGICAL_DEV_NO);
}
