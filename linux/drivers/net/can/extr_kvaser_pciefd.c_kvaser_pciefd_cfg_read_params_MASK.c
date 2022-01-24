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
struct kvaser_pciefd_cfg_param {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct kvaser_pciefd_cfg_img {struct kvaser_pciefd_cfg_param* params; } ;
struct kvaser_pciefd {int /*<<< orphan*/  nr_channels; } ;

/* Variables and functions */
 size_t KVASER_PCIEFD_CFG_PARAM_NR_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvaser_pciefd *pcie,
					  struct kvaser_pciefd_cfg_img *img)
{
	struct kvaser_pciefd_cfg_param *param;

	param = &img->params[KVASER_PCIEFD_CFG_PARAM_NR_CHAN];
	FUNC1(&pcie->nr_channels, param->data, FUNC0(param->len));
}