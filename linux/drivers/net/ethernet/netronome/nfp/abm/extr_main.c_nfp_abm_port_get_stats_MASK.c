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
typedef  int /*<<< orphan*/  u64 ;
struct nfp_repr {struct nfp_abm_link* app_priv; } ;
struct nfp_port {scalar_t__ type; int /*<<< orphan*/  netdev; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {TYPE_2__* vnic; } ;
struct TYPE_3__ {unsigned int num_r_vecs; } ;
struct TYPE_4__ {TYPE_1__ dp; } ;

/* Variables and functions */
 scalar_t__ NFP_PORT_PF_PORT ; 
 struct nfp_repr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm_link*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_abm_link*,unsigned int) ; 

__attribute__((used)) static u64 *
FUNC3(struct nfp_app *app, struct nfp_port *port, u64 *data)
{
	struct nfp_repr *repr = FUNC0(port->netdev);
	struct nfp_abm_link *alink;
	unsigned int i;

	if (port->type != NFP_PORT_PF_PORT)
		return data;
	alink = repr->app_priv;
	for (i = 0; i < alink->vnic->dp.num_r_vecs; i++) {
		*data++ = FUNC1(alink, i);
		*data++ = FUNC2(alink, i);
	}
	return data;
}