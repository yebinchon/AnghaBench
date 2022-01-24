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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_abm {unsigned int num_prios; int /*<<< orphan*/  num_bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct nfp_abm *abm)
{
	unsigned int size;

	size = FUNC3(FUNC1(abm->num_bands));
	size = FUNC0(size * abm->num_prios, BITS_PER_BYTE);
	size = FUNC2(size, sizeof(u32));

	return size;
}