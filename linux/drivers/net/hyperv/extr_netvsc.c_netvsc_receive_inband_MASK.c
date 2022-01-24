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
struct TYPE_2__ {int msg_type; } ;
struct nvsp_message {TYPE_1__ hdr; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  NVSP_MSG4_TYPE_SEND_VF_ASSOCIATION 129 
#define  NVSP_MSG5_TYPE_SEND_INDIRECTION_TABLE 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct nvsp_message const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct nvsp_message const*) ; 

__attribute__((used)) static  void FUNC2(struct net_device *ndev,
				   const struct nvsp_message *nvmsg)
{
	switch (nvmsg->hdr.msg_type) {
	case NVSP_MSG5_TYPE_SEND_INDIRECTION_TABLE:
		FUNC0(ndev, nvmsg);
		break;

	case NVSP_MSG4_TYPE_SEND_VF_ASSOCIATION:
		FUNC1(ndev, nvmsg);
		break;
	}
}