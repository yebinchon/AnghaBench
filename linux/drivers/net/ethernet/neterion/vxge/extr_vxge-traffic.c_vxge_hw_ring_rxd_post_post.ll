; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_post_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_post_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vxge_hw_ring_rxd_1 = type { i32 }

@VXGE_HW_RING_RXD_LIST_OWN_ADAPTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_ring_rxd_post_post(%struct.__vxge_hw_ring* %0, i8* %1) #0 {
  %3 = alloca %struct.__vxge_hw_ring*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vxge_hw_ring_rxd_1*, align 8
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.vxge_hw_ring_rxd_1*
  store %struct.vxge_hw_ring_rxd_1* %7, %struct.vxge_hw_ring_rxd_1** %5, align 8
  %8 = load i32, i32* @VXGE_HW_RING_RXD_LIST_OWN_ADAPTER, align 4
  %9 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %5, align 8
  %10 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %12 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %20 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %18, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
