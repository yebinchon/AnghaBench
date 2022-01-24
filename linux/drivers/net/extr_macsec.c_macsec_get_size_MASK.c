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
struct net_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const struct net_device *dev)
{
	return  FUNC1(8) + /* IFLA_MACSEC_SCI */
		FUNC0(1) + /* IFLA_MACSEC_ICV_LEN */
		FUNC1(8) + /* IFLA_MACSEC_CIPHER_SUITE */
		FUNC0(4) + /* IFLA_MACSEC_WINDOW */
		FUNC0(1) + /* IFLA_MACSEC_ENCODING_SA */
		FUNC0(1) + /* IFLA_MACSEC_ENCRYPT */
		FUNC0(1) + /* IFLA_MACSEC_PROTECT */
		FUNC0(1) + /* IFLA_MACSEC_INC_SCI */
		FUNC0(1) + /* IFLA_MACSEC_ES */
		FUNC0(1) + /* IFLA_MACSEC_SCB */
		FUNC0(1) + /* IFLA_MACSEC_REPLAY_PROTECT */
		FUNC0(1) + /* IFLA_MACSEC_VALIDATION */
		0;
}