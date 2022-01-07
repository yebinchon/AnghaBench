; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_map_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_map_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring = type { %struct.TYPE_5__, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xgbe_ring_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@XGBE_SKB_ALLOC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.xgbe_ring_data*)* @xgbe_map_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_map_rx_buffer(%struct.xgbe_prv_data* %0, %struct.xgbe_ring* %1, %struct.xgbe_ring_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_ring*, align 8
  %7 = alloca %struct.xgbe_ring_data*, align 8
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %6, align 8
  store %struct.xgbe_ring_data* %2, %struct.xgbe_ring_data** %7, align 8
  %9 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %10 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %16 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %17 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %16, i32 0, i32 1
  %18 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xgbe_alloc_pages(%struct.xgbe_prv_data* %15, %struct.TYPE_5__* %17, i32 0, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %29 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %35 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %36 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %35, i32 0, i32 0
  %37 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %39 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xgbe_alloc_pages(%struct.xgbe_prv_data* %34, %struct.TYPE_5__* %36, i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %49 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %52 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %51, i32 0, i32 1
  %53 = load i32, i32* @XGBE_SKB_ALLOC_SIZE, align 4
  %54 = call i32 @xgbe_set_buffer_data(i32* %50, %struct.TYPE_5__* %52, i32 %53)
  %55 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %56 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.xgbe_ring*, %struct.xgbe_ring** %6, align 8
  %59 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %58, i32 0, i32 0
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @xgbe_set_buffer_data(i32* %57, %struct.TYPE_5__* %59, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %47, %44, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @xgbe_alloc_pages(%struct.xgbe_prv_data*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @xgbe_set_buffer_data(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
