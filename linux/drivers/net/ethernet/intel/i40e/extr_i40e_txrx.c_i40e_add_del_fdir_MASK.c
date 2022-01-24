#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_fdir_filter {int flow_type; int ip4_proto; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FLOW_EXT ; 
#define  IPPROTO_IP 135 
#define  IPPROTO_SCTP 134 
#define  IPPROTO_TCP 133 
#define  IPPROTO_UDP 132 
#define  IP_USER_FLOW 131 
#define  SCTP_V4_FLOW 130 
#define  TCP_V4_FLOW 129 
#define  UDP_V4_FLOW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ; 
 int FUNC2 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ; 
 int FUNC3 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ; 
 int FUNC4 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ; 

int FUNC5(struct i40e_vsi *vsi,
		      struct i40e_fdir_filter *input, bool add)
{
	struct i40e_pf *pf = vsi->back;
	int ret;

	switch (input->flow_type & ~FLOW_EXT) {
	case TCP_V4_FLOW:
		ret = FUNC3(vsi, input, add);
		break;
	case UDP_V4_FLOW:
		ret = FUNC4(vsi, input, add);
		break;
	case SCTP_V4_FLOW:
		ret = FUNC2(vsi, input, add);
		break;
	case IP_USER_FLOW:
		switch (input->ip4_proto) {
		case IPPROTO_TCP:
			ret = FUNC3(vsi, input, add);
			break;
		case IPPROTO_UDP:
			ret = FUNC4(vsi, input, add);
			break;
		case IPPROTO_SCTP:
			ret = FUNC2(vsi, input, add);
			break;
		case IPPROTO_IP:
			ret = FUNC1(vsi, input, add);
			break;
		default:
			/* We cannot support masking based on protocol */
			FUNC0(&pf->pdev->dev, "Unsupported IPv4 protocol 0x%02x\n",
				 input->ip4_proto);
			return -EINVAL;
		}
		break;
	default:
		FUNC0(&pf->pdev->dev, "Unsupported flow type 0x%02x\n",
			 input->flow_type);
		return -EINVAL;
	}

	/* The buffer allocated here will be normally be freed by
	 * i40e_clean_fdir_tx_irq() as it reclaims resources after transmit
	 * completion. In the event of an error adding the buffer to the FDIR
	 * ring, it will immediately be freed. It may also be freed by
	 * i40e_clean_tx_ring() when closing the VSI.
	 */
	return ret;
}