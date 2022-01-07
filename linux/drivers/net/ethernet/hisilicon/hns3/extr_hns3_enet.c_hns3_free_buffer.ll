; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32 }
%struct.hns3_desc_cb = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }

@DESC_TYPE_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, %struct.hns3_desc_cb*)* @hns3_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_free_buffer(%struct.hns3_enet_ring* %0, %struct.hns3_desc_cb* %1) #0 {
  %3 = alloca %struct.hns3_enet_ring*, align 8
  %4 = alloca %struct.hns3_desc_cb*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %3, align 8
  store %struct.hns3_desc_cb* %1, %struct.hns3_desc_cb** %4, align 8
  %5 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %4, align 8
  %6 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DESC_TYPE_SKB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %4, align 8
  %12 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sk_buff*
  %15 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %14)
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %3, align 8
  %18 = call i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %4, align 8
  %22 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.page*
  %25 = call i32 @put_page(%struct.page* %24)
  br label %26

26:                                               ; preds = %20, %16
  br label %27

27:                                               ; preds = %26, %10
  %28 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %4, align 8
  %29 = call i32 @memset(%struct.hns3_desc_cb* %28, i32 0, i32 16)
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @HNAE3_IS_TX_RING(%struct.hns3_enet_ring*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @memset(%struct.hns3_desc_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
