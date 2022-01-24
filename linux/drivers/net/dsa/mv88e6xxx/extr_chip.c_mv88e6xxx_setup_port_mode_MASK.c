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
struct mv88e6xxx_chip {TYPE_1__* info; int /*<<< orphan*/  ds; } ;
struct TYPE_2__ {scalar_t__ tag_protocol; } ;

/* Variables and functions */
 scalar_t__ DSA_TAG_PROTO_DSA ; 
 scalar_t__ DSA_TAG_PROTO_EDSA ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int) ; 
 int FUNC4 (struct mv88e6xxx_chip*,int) ; 

__attribute__((used)) static int FUNC5(struct mv88e6xxx_chip *chip, int port)
{
	if (FUNC0(chip->ds, port))
		return FUNC2(chip, port);

	if (FUNC1(chip->ds, port))
		return FUNC4(chip, port);

	/* Setup CPU port mode depending on its supported tag format */
	if (chip->info->tag_protocol == DSA_TAG_PROTO_DSA)
		return FUNC2(chip, port);

	if (chip->info->tag_protocol == DSA_TAG_PROTO_EDSA)
		return FUNC3(chip, port);

	return -EINVAL;
}