; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_handle_tcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_handle_tcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_RING_T_CODE_OK = common dso_local global i64 0, align 8
@VXGE_HW_RING_T_CODE_L3_PKT_ERR = common dso_local global i64 0, align 8
@VXGE_HW_RING_T_CODE_MULTI_ERR = common dso_local global i64 0, align 8
@VXGE_HW_ERR_INVALID_TCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_ring_handle_tcode(%struct.__vxge_hw_ring* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.__vxge_hw_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @VXGE_HW_RING_T_CODE_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @VXGE_HW_RING_T_CODE_L3_PKT_ERR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %17, i32* %7, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @VXGE_HW_RING_T_CODE_MULTI_ERR, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VXGE_HW_ERR_INVALID_TCODE, align 4
  store i32 %23, i32* %7, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %26 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %24, %22, %16
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
