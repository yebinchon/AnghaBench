; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i32 }
%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@ENA_STATS_ARRAY_GLOBAL = common dso_local global i32 0, align 4
@ena_stats_global_strings = common dso_local global %struct.ena_stats* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @ena_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ena_adapter*, align 8
  %8 = alloca %struct.ena_stats*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ena_adapter* %11, %struct.ena_adapter** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ETH_SS_STATS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %43

16:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ENA_STATS_ARRAY_GLOBAL, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_global_strings, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %22, i64 %24
  store %struct.ena_stats* %25, %struct.ena_stats** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.ena_stats*, %struct.ena_stats** %8, align 8
  %28 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = call i32 @memcpy(i32* %26, i32 %29, i32 %30)
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.ena_adapter*, %struct.ena_adapter** %7, align 8
  %41 = call i32 @ena_queue_strings(%struct.ena_adapter* %40, i32** %6)
  %42 = call i32 @ena_com_dev_strings(i32** %6)
  br label %43

43:                                               ; preds = %39, %15
  ret void
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ena_queue_strings(%struct.ena_adapter*, i32**) #1

declare dso_local i32 @ena_com_dev_strings(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
