; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_tx_ring_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_get_tx_ring_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link_stats64 = type { i32, i32 }
%struct.ixgbevf_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtnl_link_stats64*, %struct.ixgbevf_ring*)* @ixgbevf_get_tx_ring_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_tx_ring_stats(%struct.rtnl_link_stats64* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.rtnl_link_stats64*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.rtnl_link_stats64* %0, %struct.rtnl_link_stats64** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %9 = icmp ne %struct.ixgbevf_ring* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %23, %10
  %12 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %12, i32 0, i32 1
  %14 = call i32 @u64_stats_fetch_begin_irq(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %11
  %24 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @u64_stats_fetch_retry_irq(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %11, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %32 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %3, align 8
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %29, %2
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
