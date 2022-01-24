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
struct ibmvnic_rwi {int dummy; } ;
struct ibmvnic_adapter {int dummy; } ;

/* Variables and functions */
 struct ibmvnic_rwi* FUNC0 (struct ibmvnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvnic_rwi*) ; 

__attribute__((used)) static void FUNC2(struct ibmvnic_adapter *adapter)
{
	struct ibmvnic_rwi *rwi;

	rwi = FUNC0(adapter);
	while (rwi) {
		FUNC1(rwi);
		rwi = FUNC0(adapter);
	}
}