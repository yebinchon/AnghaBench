
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_dev {int dummy; } ;


 int BIT (int ) ;
 int HCLGE_VECTOR0_CORERESET_INT_B ;
 int HCLGE_VECTOR0_EVENT_MBX ;
 int HCLGE_VECTOR0_EVENT_RST ;
 int HCLGE_VECTOR0_GLOBALRESET_INT_B ;
 int HCLGE_VECTOR0_IMPRESET_INT_B ;
 int hclge_clear_event_cause (struct hclge_dev*,int ,int) ;

__attribute__((used)) static void hclge_clear_all_event_cause(struct hclge_dev *hdev)
{
 hclge_clear_event_cause(hdev, HCLGE_VECTOR0_EVENT_RST,
    BIT(HCLGE_VECTOR0_GLOBALRESET_INT_B) |
    BIT(HCLGE_VECTOR0_CORERESET_INT_B) |
    BIT(HCLGE_VECTOR0_IMPRESET_INT_B));
 hclge_clear_event_cause(hdev, HCLGE_VECTOR0_EVENT_MBX, 0);
}
