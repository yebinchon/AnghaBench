
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int reset_pending; } ;



__attribute__((used)) static inline bool hclge_is_reset_pending(struct hclge_dev *hdev)
{
 return !!hdev->reset_pending;
}
