
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int reset_pending; } ;



__attribute__((used)) static inline bool hclgevf_is_reset_pending(struct hclgevf_dev *hdev)
{
 return !!hdev->reset_pending;
}
