; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32*, i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_target_sta = type { i32, i32, i64, i8*, i32, i32 }
%struct.ath9k_htc_vif = type { i64 }
%struct.ath9k_htc_sta = type { i32 }

@ATH9K_HTC_MAX_STA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@WMI_NODE_CREATE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to add station entry for: %pM\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Added a station entry for: %pM (idx: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Added a station entry for VIF %d (idx: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_htc_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_htc_target_sta, align 8
  %10 = alloca %struct.ath9k_htc_vif*, align 8
  %11 = alloca %struct.ath9k_htc_sta*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %8, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %23, %struct.ath9k_htc_vif** %10, align 8
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATH9K_HTC_MAX_STA, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %157

32:                                               ; preds = %3
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ffz(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @ATH9K_HTC_MAX_STA, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @ENOBUFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %157

46:                                               ; preds = %39
  %47 = call i32 @memset(%struct.ath9k_htc_target_sta* %9, i32 0, i32 32)
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %49 = icmp ne %struct.ieee80211_sta* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %54, %struct.ath9k_htc_sta** %11, align 8
  %55 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 4
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32* %55, i64 %58, i32 %59)
  %61 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 5
  %62 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %63 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32* %61, i64 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %11, align 8
  %69 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_FACTOR, align 4
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %71, %75
  %77 = shl i32 1, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i8* @cpu_to_be16(i32 %78)
  %80 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 3
  store i8* %79, i8** %80, align 8
  br label %91

81:                                               ; preds = %46
  %82 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 4
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32* %82, i64 %85, i32 %86)
  %88 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = call i8* @cpu_to_be16(i32 65535)
  %90 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 3
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %81, %50
  %92 = load i32, i32* %13, align 4
  %93 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 2
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @WMI_NODE_CREATE_CMDID, align 4
  %99 = call i32 @WMI_CMD_BUF(i32 %98, %struct.ath9k_htc_target_sta* %9)
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %91
  %103 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %104 = icmp ne %struct.ieee80211_sta* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ath_err(%struct.ath_common* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %109)
  br label %111

111:                                              ; preds = %105, %102
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %157

113:                                              ; preds = %91
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %115 = icmp ne %struct.ieee80211_sta* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %118 = load i32, i32* @CONFIG, align 4
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ath_dbg(%struct.ath_common* %117, i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32 %123)
  br label %134

125:                                              ; preds = %113
  %126 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %127 = load i32, i32* @CONFIG, align 4
  %128 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %129 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.ath9k_htc_target_sta, %struct.ath9k_htc_target_sta* %9, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ath_dbg(%struct.ath_common* %126, i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %130, i32 %132)
  br label %134

134:                                              ; preds = %125, %116
  %135 = load i32, i32* %13, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %138 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %142 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  %145 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %146 = icmp ne %struct.ieee80211_sta* %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %150 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %153 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %148, i32* %155, align 4
  br label %156

156:                                              ; preds = %147, %134
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %111, %43, %29
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_sta*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_sta*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
