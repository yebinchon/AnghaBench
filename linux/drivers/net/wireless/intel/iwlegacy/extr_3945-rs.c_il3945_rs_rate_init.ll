; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-rs.c_il3945_rs_rate_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-rs.c_il3945_rs_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_7__, %struct.ieee80211_hw* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_8__*, %struct.ieee80211_conf }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i64 }
%struct.ieee80211_conf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_sta = type { i32*, i64 }
%struct.il3945_sta_priv = type { %struct.il3945_rs_sta }
%struct.il3945_rs_sta = type { i32, i32*, i64, i32, i8*, i8*, i32, i32, %struct.il_priv* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RATE_INVALID = common dso_local global i32 0, align 4
@il3945_expected_tpt_b = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RATE_FLUSH = common dso_local global i32 0, align 4
@RATE_COUNT_3945 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_rs_rate_init(%struct.il_priv* %0, %struct.ieee80211_sta* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.il3945_sta_priv*, align 8
  %10 = alloca %struct.il3945_rs_sta*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 3
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %7, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 1
  store %struct.ieee80211_conf* %19, %struct.ieee80211_conf** %8, align 8
  %20 = call i32 @D_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %142

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.il3945_sta_priv*
  store %struct.il3945_sta_priv* %32, %struct.il3945_sta_priv** %9, align 8
  %33 = load %struct.il3945_sta_priv*, %struct.il3945_sta_priv** %9, align 8
  %34 = getelementptr inbounds %struct.il3945_sta_priv, %struct.il3945_sta_priv* %33, i32 0, i32 0
  store %struct.il3945_rs_sta* %34, %struct.il3945_rs_sta** %10, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %38, align 8
  %40 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, i64 %45
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %46, align 8
  store %struct.ieee80211_supported_band* %47, %struct.ieee80211_supported_band** %11, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %50 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %49, i32 0, i32 8
  store %struct.il_priv* %48, %struct.il_priv** %50, align 8
  %51 = load i32, i32* @RATE_INVALID, align 4
  %52 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %53 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @il3945_expected_tpt_b, align 4
  %55 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %56 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %59 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @jiffies, align 8
  %61 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %62 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @RATE_FLUSH, align 4
  %64 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %65 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %67 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %80, %28
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @RATE_COUNT_3945, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %74 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @il3945_clear_win(i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %109, %83
  %89 = load i32, i32* %12, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %107 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %112

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %12, align 4
  br label %88

112:                                              ; preds = %104, %88
  %113 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %125 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %112
  %130 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %131 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %132 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %136 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %137 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, %135
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %129, %112
  br label %142

142:                                              ; preds = %141, %27
  %143 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %144
  store i32 %152, i32* %150, align 4
  %153 = call i32 @D_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il3945_clear_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
