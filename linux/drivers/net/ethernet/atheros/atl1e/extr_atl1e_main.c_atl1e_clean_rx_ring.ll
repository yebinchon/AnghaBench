; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i64, i32*, %struct.atl1e_rx_ring }
%struct.atl1e_rx_ring = type { i32, %struct.atl1e_rx_page_desc* }
%struct.atl1e_rx_page_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@AT_PAGE_NUM_PER_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_clean_rx_ring(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_rx_ring*, align 8
  %4 = alloca %struct.atl1e_rx_page_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 2
  store %struct.atl1e_rx_ring* %8, %struct.atl1e_rx_ring** %3, align 8
  %9 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %3, align 8
  %10 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %9, i32 0, i32 1
  %11 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %10, align 8
  store %struct.atl1e_rx_page_desc* %11, %struct.atl1e_rx_page_desc** %4, align 8
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %62

17:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @AT_PAGE_NUM_PER_QUEUE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %30, i64 %31
  %33 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %41, i64 %42
  %44 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %3, align 8
  %51 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memset(i32* %49, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %40, %29
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %18

62:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
