; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STMMAC_SAFETY_FEAT_SIZE = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@STMMAC_MMC_STATS_LEN = common dso_local global i32 0, align 4
@stmmac_mmc = common dso_local global %struct.TYPE_5__* null, align 8
@STMMAC_STATS_LEN = common dso_local global i32 0, align 4
@stmmac_gstrings_stats = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @stmmac_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stmmac_priv*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  store i32* %11, i32** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %9, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %103 [
    i32 129, label %15
    i32 128, label %99
  ]

15:                                               ; preds = %3
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @STMMAC_SAFETY_FEAT_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @stmmac_safety_feat_dump(%struct.stmmac_priv* %27, i32* %29, i32 %30, i32* null, i8** %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %37 = call i32 @memcpy(i32* %34, i8* %35, i32 %36)
  %38 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %8, align 8
  br label %42

42:                                               ; preds = %33, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %22

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @STMMAC_MMC_STATS_LEN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stmmac_mmc, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %67 = call i32 @memcpy(i32* %59, i8* %65, i32 %66)
  %68 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %8, align 8
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %47
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @STMMAC_STATS_LEN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @stmmac_gstrings_stats, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %90 = call i32 @memcpy(i32* %82, i8* %88, i32 %89)
  %91 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %77

98:                                               ; preds = %77
  br label %105

99:                                               ; preds = %3
  %100 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @stmmac_selftest_get_strings(%struct.stmmac_priv* %100, i32* %101)
  br label %105

103:                                              ; preds = %3
  %104 = call i32 @WARN_ON(i32 1)
  br label %105

105:                                              ; preds = %103, %99, %98
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_safety_feat_dump(%struct.stmmac_priv*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @stmmac_selftest_get_strings(%struct.stmmac_priv*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
