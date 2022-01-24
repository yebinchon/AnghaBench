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
typedef  int u32 ;
struct vf_data_storage {int flags; int /*<<< orphan*/  trusted; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct pci_dev* pdev; } ;

/* Variables and functions */
 int E1000_VT_MSGINFO_MASK ; 
 int EINVAL ; 
 int IGB_VF_FLAG_PF_SET_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct igb_adapter*,int,unsigned char*) ; 
 int FUNC2 (struct igb_adapter*,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

__attribute__((used)) static int FUNC4(struct igb_adapter *adapter, u32 *msg, int vf)
{
	struct pci_dev *pdev = adapter->pdev;
	struct vf_data_storage *vf_data = &adapter->vf_data[vf];
	u32 info = msg[0] & E1000_VT_MSGINFO_MASK;

	/* The VF MAC Address is stored in a packed array of bytes
	 * starting at the second 32 bit word of the msg array
	 */
	unsigned char *addr = (unsigned char *)&msg[1];
	int ret = 0;

	if (!info) {
		if ((vf_data->flags & IGB_VF_FLAG_PF_SET_MAC) &&
		    !vf_data->trusted) {
			FUNC0(&pdev->dev,
				 "VF %d attempted to override administratively set MAC address\nReload the VF driver to resume operations\n",
				 vf);
			return -EINVAL;
		}

		if (!FUNC3(addr)) {
			FUNC0(&pdev->dev,
				 "VF %d attempted to set invalid MAC\n",
				 vf);
			return -EINVAL;
		}

		ret = FUNC1(adapter, vf, addr);
	} else {
		ret = FUNC2(adapter, vf, info, addr);
	}

	return ret;
}