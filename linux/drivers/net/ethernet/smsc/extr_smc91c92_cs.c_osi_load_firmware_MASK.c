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
struct pcmcia_device {TYPE_1__** resource; int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRMWARE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
	const struct firmware *fw;
	int i, err;

	err = FUNC3(&fw, FIRMWARE_NAME, &link->dev);
	if (err) {
		FUNC1("Failed to load firmware \"%s\"\n", FIRMWARE_NAME);
		return err;
	}

	/* Download the Seven of Diamonds firmware */
	for (i = 0; i < fw->size; i++) {
	    FUNC0(fw->data[i], link->resource[0]->start + 2);
	    FUNC4(50);
	}
	FUNC2(fw);
	return err;
}