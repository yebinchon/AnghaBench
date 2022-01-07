; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_next_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-traffic.c_vxge_hw_ring_rxd_next_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { %struct.TYPE_4__*, i32, %struct.__vxge_hw_channel }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.__vxge_hw_channel = type { i32 }
%struct.vxge_hw_ring_rxd_1 = type { i32, i64 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS = common dso_local global i32 0, align 4
@VXGE_HW_RING_RXD_LIST_OWN_ADAPTER = common dso_local global i32 0, align 4
@VXGE_HW_RING_T_CODE_FRM_DROP = common dso_local global i64 0, align 8
@VXGE_HW_RING_RXD_T_CODE_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_ring_rxd_next_completed(%struct.__vxge_hw_ring* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.__vxge_hw_ring*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.__vxge_hw_channel*, align 8
  %8 = alloca %struct.vxge_hw_ring_rxd_1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %13, i32 0, i32 2
  store %struct.__vxge_hw_channel* %14, %struct.__vxge_hw_channel** %7, align 8
  %15 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @vxge_hw_channel_dtr_try_complete(%struct.__vxge_hw_channel* %15, i8** %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.vxge_hw_ring_rxd_1*
  store %struct.vxge_hw_ring_rxd_1* %20, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %21 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %22 = icmp eq %struct.vxge_hw_ring_rxd_1* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS, align 4
  store i32 %24, i32* %9, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %27 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VXGE_HW_RING_RXD_LIST_OWN_ADAPTER, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @VXGE_HW_RING_RXD_T_CODE_GET(i32 %32)
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VXGE_HW_RING_T_CODE_FRM_DROP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %37, %25
  %43 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %8, align 8
  %44 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @vxge_assert(i32 %47)
  %49 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %50 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %7, align 8
  %54 = call i32 @vxge_hw_channel_dtr_complete(%struct.__vxge_hw_channel* %53)
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VXGE_HW_RING_RXD_T_CODE_UNUSED, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @vxge_assert(i32 %59)
  %61 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %62 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %69 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %75 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %73, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %42
  %82 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %83 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %89 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i64 %87, i64* %92, align 8
  br label %93

93:                                               ; preds = %81, %42
  %94 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %94, i32* %9, align 4
  br label %98

95:                                               ; preds = %37
  %96 = load i8**, i8*** %5, align 8
  store i8* null, i8** %96, align 8
  %97 = load i32, i32* @VXGE_HW_INF_NO_MORE_COMPLETED_DESCRIPTORS, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %95, %93, %23
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @vxge_hw_channel_dtr_try_complete(%struct.__vxge_hw_channel*, i8**) #1

declare dso_local i64 @VXGE_HW_RING_RXD_T_CODE_GET(i32) #1

declare dso_local i32 @vxge_assert(i32) #1

declare dso_local i32 @vxge_hw_channel_dtr_complete(%struct.__vxge_hw_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
