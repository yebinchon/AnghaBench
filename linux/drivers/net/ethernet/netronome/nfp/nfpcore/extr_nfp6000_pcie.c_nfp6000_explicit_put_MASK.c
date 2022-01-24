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
struct nfp_cpp_explicit {int dummy; } ;
struct nfp6000_explicit_priv {scalar_t__ data; } ;

/* Variables and functions */
 struct nfp6000_explicit_priv* FUNC0 (struct nfp_cpp_explicit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct nfp_cpp_explicit *expl,
				const void *buff, size_t len)
{
	struct nfp6000_explicit_priv *priv = FUNC0(expl);
	const u32 *src = buff;
	size_t i;

	for (i = 0; i < len; i += sizeof(u32))
		FUNC1(*(src++), priv->data + i);

	return i;
}