; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ena_adapter = type { i32, i32 }

@ENA_STATS_ARRAY_GLOBAL = common dso_local global i32 0, align 4
@ena_stats_global_strings = common dso_local global %struct.ena_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ena_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ena_adapter*, align 8
  %8 = alloca %struct.ena_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ena_adapter* %12, %struct.ena_adapter** %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @ENA_STATS_ARRAY_GLOBAL, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_global_strings, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %18, i64 %20
  store %struct.ena_stats* %21, %struct.ena_stats** %8, align 8
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 1
  %24 = ptrtoint i32* %23 to i64
  %25 = load %struct.ena_stats*, %struct.ena_stats** %8, align 8
  %26 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i32
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = call i32 @ena_safe_update_stat(i32* %30, i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %42 = call i32 @ena_queue_stats(%struct.ena_adapter* %41, i32** %6)
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %44 = call i32 @ena_dev_admin_queue_stats(%struct.ena_adapter* %43, i32** %6)
  ret void
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_safe_update_stat(i32*, i32, i32*) #1

declare dso_local i32 @ena_queue_stats(%struct.ena_adapter*, i32**) #1

declare dso_local i32 @ena_dev_admin_queue_stats(%struct.ena_adapter*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
