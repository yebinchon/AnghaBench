; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_update_allowed_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_update_allowed_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.wcn36xx_sta = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32 }

@STA_11n = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@wcn_2ghz_rates = common dso_local global %struct.TYPE_9__* null, align 8
@wcn_5ghz_rates = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, i32)* @wcn36xx_update_allowed_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_update_allowed_rates(%struct.ieee80211_sta* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wcn36xx_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %11 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %10)
  store %struct.wcn36xx_sta* %11, %struct.wcn36xx_sta** %8, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %19, i32 0, i32 0
  %21 = call i32 @memset(%struct.TYPE_10__* %20, i32 0, i32 32)
  %22 = load i32, i32* @STA_11n, align 4
  %23 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @wcn_2ghz_rates, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %47, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %39

64:                                               ; preds = %39
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ARRAY_SIZE(i32* %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %72 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %97, %65
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wcn_5ghz_rates, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %83, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = call i32 @BUILD_BUG_ON(i32 0)
  %108 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %8, align 8
  %109 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @memcpy(i32 %111, i32 %116, i32 4)
  br label %118

118:                                              ; preds = %106, %100
  ret void
}

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
