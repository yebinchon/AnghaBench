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
struct TYPE_2__ {scalar_t__ mbox_len; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,char*,unsigned int,scalar_t__) ; 

int FUNC2(struct nfp_net *nn, unsigned int data_size)
{
	if (nn->tlv_caps.mbox_len < NFP_NET_CFG_MBOX_SIMPLE_VAL + data_size) {
		FUNC1(nn, "mailbox too small for %u of data (%u)\n",
		       data_size, nn->tlv_caps.mbox_len);
		return -EIO;
	}

	FUNC0(nn);
	return 0;
}