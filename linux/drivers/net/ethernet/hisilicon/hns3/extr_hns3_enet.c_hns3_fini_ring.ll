; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fini_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_fini_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32*, i64, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns3_fini_ring(%struct.hns3_enet_ring* %0) #0 {
  %2 = alloca %struct.hns3_enet_ring*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %2, align 8
  %3 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %4 = call i32 @hns3_free_desc(%struct.hns3_enet_ring* %3)
  %5 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %6 = call i32 @ring_to_dev(%struct.hns3_enet_ring* %5)
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %8 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @devm_kfree(i32 %6, i32* %9)
  %11 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %12 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %14 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %20 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dev_kfree_skb_any(i32* %26)
  %28 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  %29 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @hns3_free_desc(%struct.hns3_enet_ring*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

declare dso_local i32 @ring_to_dev(%struct.hns3_enet_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
