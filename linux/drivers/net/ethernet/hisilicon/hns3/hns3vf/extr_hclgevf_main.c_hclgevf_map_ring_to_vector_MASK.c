#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hnae3_ring_chain_node {int dummy; } ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct hclgevf_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct hclgevf_dev* FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hnae3_handle*,int,int,struct hnae3_ring_chain_node*) ; 
 int FUNC3 (struct hclgevf_dev*,int) ; 

__attribute__((used)) static int FUNC4(struct hnae3_handle *handle, int vector,
				      struct hnae3_ring_chain_node *ring_chain)
{
	struct hclgevf_dev *hdev = FUNC1(handle);
	int vector_id;

	vector_id = FUNC3(hdev, vector);
	if (vector_id < 0) {
		FUNC0(&handle->pdev->dev,
			"Get vector index fail. ret =%d\n", vector_id);
		return vector_id;
	}

	return FUNC2(handle, true, vector_id, ring_chain);
}