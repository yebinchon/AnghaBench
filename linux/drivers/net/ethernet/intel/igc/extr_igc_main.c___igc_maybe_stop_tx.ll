; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i32, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_ring*, i64)* @__igc_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igc_maybe_stop_tx(%struct.igc_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igc_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.igc_ring* %0, %struct.igc_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %8 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %12 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_stop_subqueue(%struct.net_device* %10, i32 %13)
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %17 = call i64 @igc_desc_unused(%struct.igc_ring* %16)
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %26 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_wake_subqueue(%struct.net_device* %24, i32 %27)
  %29 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %30 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %29, i32 0, i32 0
  %31 = call i32 @u64_stats_update_begin(i32* %30)
  %32 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %33 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.igc_ring*, %struct.igc_ring** %4, align 8
  %38 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %37, i32 0, i32 0
  %39 = call i32 @u64_stats_update_end(i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %23, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @igc_desc_unused(%struct.igc_ring*) #1

declare dso_local i32 @netif_wake_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
