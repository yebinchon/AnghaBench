; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_fetch_u64_stats_per_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_fetch_u64_stats_per_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, i64*, i64*)* @ice_fetch_u64_stats_per_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_fetch_u64_stats_per_ring(%struct.ice_ring* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64*, i64** %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %11 = icmp ne %struct.ice_ring* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %34

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %28, %13
  %15 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %15, i32 0, i32 1
  %17 = call i32 @u64_stats_fetch_begin_irq(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %24 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %14
  %29 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @u64_stats_fetch_retry_irq(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %14, label %34

34:                                               ; preds = %12, %28
  ret void
}

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
