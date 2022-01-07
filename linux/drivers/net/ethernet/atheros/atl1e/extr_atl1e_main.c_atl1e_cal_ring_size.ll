; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_cal_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_cal_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AT_PAGE_NUM_PER_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*, i64*)* @atl1e_cal_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_cal_ring_size(%struct.atl1e_adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca i64*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 7
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = add i64 %11, %22
  %24 = add i64 %23, 31
  %25 = load i32, i32* @AT_PAGE_NUM_PER_QUEUE, align 4
  %26 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = add i64 %24, %32
  %34 = add i64 %33, 3
  %35 = load i64*, i64** %4, align 8
  store i64 %34, i64* %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
