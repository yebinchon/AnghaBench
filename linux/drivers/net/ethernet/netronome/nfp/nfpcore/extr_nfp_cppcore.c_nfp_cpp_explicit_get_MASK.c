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
struct nfp_cpp_explicit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct nfp_cpp_explicit*,void*,size_t) ; 
 int /*<<< orphan*/  explicit_get ; 

int FUNC1(struct nfp_cpp_explicit *expl, void *buff, size_t len)
{
	return FUNC0(explicit_get, expl, buff, len);
}