; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.cpsw_common = type { i32, i32 }

@CPSW_STATS_COMMON_LEN = common dso_local global i32 0, align 4
@cpsw_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %10)
  store %struct.cpsw_common* %11, %struct.cpsw_common** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %45 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @CPSW_STATS_COMMON_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpsw_gstrings_stats, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %28 = call i32 @memcpy(i32* %20, i32 %26, i32 %27)
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %38 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpsw_add_ch_strings(i32** %8, i32 %39, i32 1)
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpsw_add_ch_strings(i32** %8, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %3, %36
  ret void
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpsw_add_ch_strings(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
