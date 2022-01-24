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
struct brcmf_chip {int dummy; } ;
struct brcmf_chip_priv {struct brcmf_chip pub; void* ctx; struct brcmf_buscore_ops const* ops; scalar_t__ num_cores; int /*<<< orphan*/  cores; } ;
struct brcmf_buscore_ops {int (* prepare ) (void*) ;int /*<<< orphan*/  activate; int /*<<< orphan*/  write32; int /*<<< orphan*/  read32; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct brcmf_chip* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_chip*) ; 
 int FUNC4 (struct brcmf_chip_priv*) ; 
 int FUNC5 (struct brcmf_chip_priv*) ; 
 struct brcmf_chip_priv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*) ; 

struct brcmf_chip *FUNC8(void *ctx,
				     const struct brcmf_buscore_ops *ops)
{
	struct brcmf_chip_priv *chip;
	int err = 0;

	if (FUNC2(!ops->read32))
		err = -EINVAL;
	if (FUNC2(!ops->write32))
		err = -EINVAL;
	if (FUNC2(!ops->prepare))
		err = -EINVAL;
	if (FUNC2(!ops->activate))
		err = -EINVAL;
	if (err < 0)
		return FUNC0(-EINVAL);

	chip = FUNC6(sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return FUNC0(-ENOMEM);

	FUNC1(&chip->cores);
	chip->num_cores = 0;
	chip->ops = ops;
	chip->ctx = ctx;

	err = ops->prepare(ctx);
	if (err < 0)
		goto fail;

	err = FUNC4(chip);
	if (err < 0)
		goto fail;

	err = FUNC5(chip);
	if (err < 0)
		goto fail;

	return &chip->pub;

fail:
	FUNC3(&chip->pub);
	return FUNC0(err);
}