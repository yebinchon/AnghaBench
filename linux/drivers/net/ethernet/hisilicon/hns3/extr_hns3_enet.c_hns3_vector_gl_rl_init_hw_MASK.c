#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hns3_nic_priv {struct hnae3_handle* ae_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  int_gl; } ;
struct TYPE_9__ {TYPE_3__ coal; } ;
struct TYPE_6__ {int /*<<< orphan*/  int_gl; } ;
struct TYPE_7__ {TYPE_1__ coal; } ;
struct hns3_enet_tqp_vector {TYPE_4__ rx_group; TYPE_2__ tx_group; } ;
struct TYPE_10__ {int /*<<< orphan*/  int_rl_setting; } ;
struct hnae3_handle {TYPE_5__ kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_tqp_vector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_tqp_vector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_tqp_vector*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hns3_enet_tqp_vector *tqp_vector,
				      struct hns3_nic_priv *priv)
{
	struct hnae3_handle *h = priv->ae_handle;

	FUNC2(tqp_vector,
				       tqp_vector->tx_group.coal.int_gl);
	FUNC1(tqp_vector,
				       tqp_vector->rx_group.coal.int_gl);
	FUNC0(tqp_vector, h->kinfo.int_rl_setting);
}