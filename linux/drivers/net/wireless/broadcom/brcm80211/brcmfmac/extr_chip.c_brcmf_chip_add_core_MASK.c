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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcmf_core {void* base; int /*<<< orphan*/  id; } ;
struct brcmf_core_priv {struct brcmf_core pub; int /*<<< orphan*/  list; void* wrapbase; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int /*<<< orphan*/  cores; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct brcmf_core* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct brcmf_core_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct brcmf_core *FUNC3(struct brcmf_chip_priv *ci,
					      u16 coreid, u32 base,
					      u32 wrapbase)
{
	struct brcmf_core_priv *core;

	core = FUNC1(sizeof(*core), GFP_KERNEL);
	if (!core)
		return FUNC0(-ENOMEM);

	core->pub.id = coreid;
	core->pub.base = base;
	core->chip = ci;
	core->wrapbase = wrapbase;

	FUNC2(&core->list, &ci->cores);
	return &core->pub;
}