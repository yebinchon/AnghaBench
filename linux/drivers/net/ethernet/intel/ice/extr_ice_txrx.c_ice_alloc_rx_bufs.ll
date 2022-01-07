; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_alloc_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_alloc_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i64, %struct.ice_rx_buf*, i32, i32 }
%struct.ice_rx_buf = type { i64, i64 }
%union.ice_32b_rx_flex_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ICE_RXBUF_2048 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_alloc_rx_bufs(%struct.ice_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.ice_32b_rx_flex_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ice_rx_buf*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %104

20:                                               ; preds = %16
  %21 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %union.ice_32b_rx_flex_desc* @ICE_RX_DESC(%struct.ice_ring* %21, i64 %22)
  store %union.ice_32b_rx_flex_desc* %23, %union.ice_32b_rx_flex_desc** %6, align 8
  %24 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %25 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %24, i32 0, i32 2
  %26 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %26, i64 %27
  store %struct.ice_rx_buf* %28, %struct.ice_rx_buf** %8, align 8
  br label %29

29:                                               ; preds = %85, %20
  %30 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %31 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %32 = call i32 @ice_alloc_mapped_page(%struct.ice_ring* %30, %struct.ice_rx_buf* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %88

35:                                               ; preds = %29
  %36 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %40 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %43 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @ICE_RXBUF_2048, align 4
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_sync_single_range_for_device(i32 %38, i64 %41, i64 %44, i32 %45, i32 %46)
  %48 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %49 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %52 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @cpu_to_le64(i64 %54)
  %56 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %6, align 8
  %57 = bitcast %union.ice_32b_rx_flex_desc* %56 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %6, align 8
  %60 = getelementptr inbounds %union.ice_32b_rx_flex_desc, %union.ice_32b_rx_flex_desc* %59, i32 1
  store %union.ice_32b_rx_flex_desc* %60, %union.ice_32b_rx_flex_desc** %6, align 8
  %61 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %62 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %61, i32 1
  store %struct.ice_rx_buf* %62, %struct.ice_rx_buf** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %67 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %35
  %74 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %75 = call %union.ice_32b_rx_flex_desc* @ICE_RX_DESC(%struct.ice_ring* %74, i64 0)
  store %union.ice_32b_rx_flex_desc* %75, %union.ice_32b_rx_flex_desc** %6, align 8
  %76 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %77 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %76, i32 0, i32 2
  %78 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %77, align 8
  store %struct.ice_rx_buf* %78, %struct.ice_rx_buf** %8, align 8
  store i64 0, i64* %7, align 8
  br label %79

79:                                               ; preds = %73, %35
  %80 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %6, align 8
  %81 = bitcast %union.ice_32b_rx_flex_desc* %80 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %29, label %88

88:                                               ; preds = %85, %34
  %89 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %90 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @ice_release_rx_desc(%struct.ice_ring* %95, i64 %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %union.ice_32b_rx_flex_desc* @ICE_RX_DESC(%struct.ice_ring*, i64) #1

declare dso_local i32 @ice_alloc_mapped_page(%struct.ice_ring*, %struct.ice_rx_buf*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i64, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ice_release_rx_desc(%struct.ice_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
