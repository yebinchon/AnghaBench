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
typedef  int u16 ;
struct nfp_app {struct nfp_abm* priv; } ;
struct nfp_abm {int eswitch_mode; } ;

/* Variables and functions */
#define  DEVLINK_ESWITCH_MODE_LEGACY 129 
#define  DEVLINK_ESWITCH_MODE_SWITCHDEV 128 
 int EINVAL ; 
 int FUNC0 (struct nfp_abm*) ; 
 int FUNC1 (struct nfp_abm*) ; 

__attribute__((used)) static int FUNC2(struct nfp_app *app, u16 mode)
{
	struct nfp_abm *abm = app->priv;

	if (abm->eswitch_mode == mode)
		return 0;

	switch (mode) {
	case DEVLINK_ESWITCH_MODE_LEGACY:
		return FUNC0(abm);
	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
		return FUNC1(abm);
	default:
		return -EINVAL;
	}
}