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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct TYPE_4__ {int /*<<< orphan*/  sq_last_status; } ;
struct ice_hw {int vendor_id; int device_id; TYPE_2__ adminq; } ;
struct ice_pf {TYPE_1__* pdev; struct ice_hw hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct device {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int* FUNC1 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int*) ; 
 int FUNC3 (struct ice_hw*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ice_netdev_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, struct ethtool_eeprom *eeprom,
	       u8 *bytes)
{
	struct ice_netdev_priv *np = FUNC5(netdev);
	u16 first_word, last_word, nwords;
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	struct ice_hw *hw = &pf->hw;
	enum ice_status status;
	struct device *dev;
	int ret = 0;
	u16 *buf;

	dev = &pf->pdev->dev;

	eeprom->magic = hw->vendor_id | (hw->device_id << 16);

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	nwords = last_word - first_word + 1;

	buf = FUNC1(dev, nwords, sizeof(u16), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	status = FUNC3(hw, first_word, &nwords, buf);
	if (status) {
		FUNC0(dev, "ice_read_sr_buf failed, err %d aq_err %d\n",
			status, hw->adminq.sq_last_status);
		eeprom->len = sizeof(u16) * nwords;
		ret = -EIO;
		goto out;
	}

	FUNC4(bytes, (u8 *)buf + (eeprom->offset & 1), eeprom->len);
out:
	FUNC2(dev, buf);
	return ret;
}