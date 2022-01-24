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
typedef  scalar_t__ u32 ;
struct bfi_ioc_image_hdr {int /*<<< orphan*/  bootenv; } ;
struct bfa_ioc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct bfa_ioc *ioc, u32 boot_env)
{
	struct bfi_ioc_image_hdr fwhdr;

	FUNC1(ioc, &fwhdr);
	if (FUNC2(fwhdr.bootenv) != boot_env)
		return false;

	return FUNC0(ioc, &fwhdr);
}