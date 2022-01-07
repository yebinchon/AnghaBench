; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_init_ring_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_init_ring_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, %struct.atl1e_rx_ring, %struct.atl1e_tx_ring }
%struct.atl1e_rx_ring = type { %struct.atl1e_rx_page_desc* }
%struct.atl1e_rx_page_desc = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64* }
%struct.atl1e_tx_ring = type { i32, i64 }

@AT_PAGE_NUM_PER_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_init_ring_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_init_ring_ptrs(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_tx_ring*, align 8
  %4 = alloca %struct.atl1e_rx_ring*, align 8
  %5 = alloca %struct.atl1e_rx_page_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  store %struct.atl1e_tx_ring* null, %struct.atl1e_tx_ring** %3, align 8
  store %struct.atl1e_rx_ring* null, %struct.atl1e_rx_ring** %4, align 8
  store %struct.atl1e_rx_page_desc* null, %struct.atl1e_rx_page_desc** %5, align 8
  %8 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %8, i32 0, i32 2
  store %struct.atl1e_tx_ring* %9, %struct.atl1e_tx_ring** %3, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 1
  store %struct.atl1e_rx_ring* %11, %struct.atl1e_rx_ring** %4, align 8
  %12 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %12, i32 0, i32 0
  %14 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %13, align 8
  store %struct.atl1e_rx_page_desc* %14, %struct.atl1e_rx_page_desc** %5, align 8
  %15 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %16 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %18 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %17, i32 0, i32 0
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %67, %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %27, i64 %29
  %31 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %63, %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %42, i64 %44
  %46 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %53, i64 %55
  %57 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %41
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %37

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %20

70:                                               ; preds = %20
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
