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
struct net_device {int dummy; } ;
struct hns3_nic_priv {int /*<<< orphan*/  state; } ;
struct hnae3_knic_private_info {struct net_device* netdev; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; int /*<<< orphan*/  pdev; } ;
struct hnae3_ae_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (struct hnae3_ae_dev*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct hns3_nic_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct hnae3_ae_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hnae3_handle *handle)
{
	struct hnae3_ae_dev *ae_dev = FUNC6(handle->pdev);
	struct hnae3_knic_private_info *kinfo = &handle->kinfo;
	struct net_device *ndev = kinfo->netdev;
	struct hns3_nic_priv *priv = FUNC4(ndev);

	if (FUNC7(HNS3_NIC_STATE_RESETTING, &priv->state))
		return 0;

	/* it is cumbersome for hardware to pick-and-choose entries for deletion
	 * from table space. Hence, for function reset software intervention is
	 * required to delete the entries
	 */
	if (FUNC1(ae_dev)) {
		FUNC3(ndev);
		FUNC0(ndev, false);
	}

	if (!FUNC5(ndev))
		return 0;

	return FUNC2(ndev);
}