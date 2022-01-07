; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@DPAA2_ETH_NUM_STATS = common dso_local global i32 0, align 4
@dpaa2_ethtool_stats = common dso_local global i32* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@DPAA2_ETH_NUM_EXTRA_STATS = common dso_local global i32 0, align 4
@dpaa2_ethtool_extras = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @dpaa2_eth_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa2_eth_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %54 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DPAA2_ETH_NUM_STATS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** @dpaa2_ethtool_stats, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %24 = call i32 @strlcpy(i32* %17, i32 %22, i32 %23)
  %25 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %7, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %12

32:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @DPAA2_ETH_NUM_EXTRA_STATS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** @dpaa2_ethtool_extras, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %45 = call i32 @strlcpy(i32* %38, i32 %43, i32 %44)
  %46 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %3, %53
  ret void
}

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
