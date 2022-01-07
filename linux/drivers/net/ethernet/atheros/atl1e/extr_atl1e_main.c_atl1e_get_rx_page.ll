; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_rx_page = type { i32 }
%struct.atl1e_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.atl1e_rx_page_desc = type { i64, %struct.atl1e_rx_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atl1e_rx_page* (%struct.atl1e_adapter*, i64)* @atl1e_get_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atl1e_rx_page* @atl1e_get_rx_page(%struct.atl1e_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.atl1e_rx_page_desc*, align 8
  %6 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.atl1e_rx_page_desc*
  store %struct.atl1e_rx_page_desc* %11, %struct.atl1e_rx_page_desc** %5, align 8
  %12 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %12, i64 %13
  %15 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %17, i64 %18
  %20 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %19, i32 0, i32 1
  %21 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %21, i64 %22
  ret %struct.atl1e_rx_page* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
