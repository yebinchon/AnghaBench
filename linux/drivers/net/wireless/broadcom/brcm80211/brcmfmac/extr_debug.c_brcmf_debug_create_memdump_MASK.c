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
struct brcmf_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct brcmf_bus*,void*,size_t) ; 
 size_t FUNC1 (struct brcmf_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t) ; 

int FUNC6(struct brcmf_bus *bus, const void *data,
			       size_t len)
{
	void *dump;
	size_t ramsize;
	int err;

	ramsize = FUNC1(bus);
	if (!ramsize)
		return -ENOTSUPP;

	dump = FUNC5(len + ramsize);
	if (!dump)
		return -ENOMEM;

	if (data && len > 0)
		FUNC3(dump, data, len);
	err = FUNC0(bus, dump + len, ramsize);
	if (err) {
		FUNC4(dump);
		return err;
	}

	FUNC2(bus->dev, dump, len + ramsize, GFP_KERNEL);

	return 0;
}