; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_poll_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_vpath_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { i64, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__, i32 (%struct.__vxge_hw_ring*, i8*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_poll_rx(%struct.__vxge_hw_ring* %0) #0 {
  %2 = alloca %struct.__vxge_hw_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %2, align 8
  %8 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %10 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %12 = call i32 @vxge_hw_ring_rxd_next_completed(%struct.__vxge_hw_ring* %11, i8** %5, i32* %3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VXGE_HW_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %18 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %17, i32 0, i32 8
  %19 = load i32 (%struct.__vxge_hw_ring*, i8*, i32, i32)*, i32 (%struct.__vxge_hw_ring*, i8*, i32, i32)** %18, align 8
  %20 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %24 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %19(%struct.__vxge_hw_ring* %20, i8* %21, i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %30 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %28
  %34 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %35 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %38 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %44 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %47 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %33
  %51 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %52 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %56 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %59 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %63 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %66 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %50
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %73 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %76 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = srem i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %69, %50
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @VXGE_HW_PRC_RXD_DOORBELL_NEW_QW_CNT(i32 %80)
  %82 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %83 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %82, i32 0, i32 6
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @writeq(i32 %81, i32* %85)
  %87 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %88 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %87, i32 0, i32 5
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @readl(i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %2, align 8
  %93 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %92, i32 0, i32 1
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %79, %33
  br label %95

95:                                               ; preds = %94, %28
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @vxge_hw_ring_rxd_next_completed(%struct.__vxge_hw_ring*, i8**, i32*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @VXGE_HW_PRC_RXD_DOORBELL_NEW_QW_CNT(i32) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
