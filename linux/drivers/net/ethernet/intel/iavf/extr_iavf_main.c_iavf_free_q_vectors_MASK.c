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
struct iavf_q_vector {int /*<<< orphan*/  napi; } ;
struct iavf_adapter {int num_msix_vectors; int num_active_queues; struct iavf_q_vector* q_vectors; } ;

/* Variables and functions */
 int NONQ_VECS ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_q_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iavf_adapter *adapter)
{
	int q_idx, num_q_vectors;
	int napi_vectors;

	if (!adapter->q_vectors)
		return;

	num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
	napi_vectors = adapter->num_active_queues;

	for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
		struct iavf_q_vector *q_vector = &adapter->q_vectors[q_idx];

		if (q_idx < napi_vectors)
			FUNC1(&q_vector->napi);
	}
	FUNC0(adapter->q_vectors);
	adapter->q_vectors = NULL;
}