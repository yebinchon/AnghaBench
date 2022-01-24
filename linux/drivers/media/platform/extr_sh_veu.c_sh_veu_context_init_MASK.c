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
struct sh_veu_dev {scalar_t__ m2m_ctx; int /*<<< orphan*/  m2m_dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  sh_veu_queue_init ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sh_veu_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sh_veu_dev *veu)
{
	if (veu->m2m_ctx)
		return 0;

	veu->m2m_ctx = FUNC1(veu->m2m_dev, veu,
					 sh_veu_queue_init);

	return FUNC0(veu->m2m_ctx);
}