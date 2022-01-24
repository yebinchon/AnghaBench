#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hclge_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_CORERESET_INT_B ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_EVENT_MBX ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_EVENT_RST ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_GLOBALRESET_INT_B ; 
 int /*<<< orphan*/  HCLGE_VECTOR0_IMPRESET_INT_B ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hclge_dev *hdev)
{
	FUNC1(hdev, HCLGE_VECTOR0_EVENT_RST,
				FUNC0(HCLGE_VECTOR0_GLOBALRESET_INT_B) |
				FUNC0(HCLGE_VECTOR0_CORERESET_INT_B) |
				FUNC0(HCLGE_VECTOR0_IMPRESET_INT_B));
	FUNC1(hdev, HCLGE_VECTOR0_EVENT_MBX, 0);
}