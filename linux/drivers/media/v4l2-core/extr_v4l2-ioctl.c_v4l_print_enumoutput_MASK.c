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
struct v4l2_output {int /*<<< orphan*/  capabilities; scalar_t__ std; int /*<<< orphan*/  modulator; int /*<<< orphan*/  audioset; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const void *arg, bool write_only)
{
	const struct v4l2_output *p = arg;

	FUNC0("index=%u, name=%.*s, type=%u, audioset=0x%x, modulator=%u, std=0x%08Lx, capabilities=0x%x\n",
		p->index, (int)sizeof(p->name), p->name, p->type, p->audioset,
		p->modulator, (unsigned long long)p->std, p->capabilities);
}