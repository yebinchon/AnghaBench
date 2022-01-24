#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_mac {int /*<<< orphan*/  mdio_bus; scalar_t__ phydev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector_irq; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {int /*<<< orphan*/  vport_cfg_mutex; int /*<<< orphan*/  vport_lock; TYPE_2__ misc_vector; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct hnae3_ae_dev *ae_dev)
{
	struct hclge_dev *hdev = ae_dev->priv;
	struct hclge_mac *mac = &hdev->hw.mac;

	FUNC5(hdev);
	FUNC8(hdev);

	if (mac->phydev)
		FUNC12(mac->mdio_bus);

	FUNC9(hdev);

	/* Disable MISC vector(vector0) */
	FUNC4(&hdev->misc_vector, false);
	FUNC14(hdev->misc_vector.vector_irq);

	/* Disable all hw interrupts */
	FUNC1(hdev, false);
	FUNC2(hdev, false);
	FUNC3(hdev, false);

	FUNC0(hdev);
	FUNC6(hdev);
	FUNC7(hdev);
	FUNC13(&hdev->vport_lock);
	FUNC10(hdev);
	FUNC11(hdev);
	FUNC13(&hdev->vport_cfg_mutex);
	ae_dev->priv = NULL;
}