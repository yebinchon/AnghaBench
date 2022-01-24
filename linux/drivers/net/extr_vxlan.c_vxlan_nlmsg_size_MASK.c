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
struct ndmsg {int dummy; } ;
struct nda_cacheinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __s32 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ETH_ALEN ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct ndmsg))
		+ FUNC1(ETH_ALEN) /* NDA_LLADDR */
		+ FUNC1(sizeof(struct in6_addr)) /* NDA_DST */
		+ FUNC1(sizeof(__be16)) /* NDA_PORT */
		+ FUNC1(sizeof(__be32)) /* NDA_VNI */
		+ FUNC1(sizeof(__u32)) /* NDA_IFINDEX */
		+ FUNC1(sizeof(__s32)) /* NDA_LINK_NETNSID */
		+ FUNC1(sizeof(struct nda_cacheinfo));
}