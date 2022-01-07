; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_sta_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_sta_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i64, i32* }
%struct.ieee80211_sta = type { i32, i32, i32* }
%struct.wcn36xx_hal_config_sta_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.wcn36xx_vif = type { i32, i32, i32 }
%struct.wcn36xx_sta = type { i32, i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@WCN36XX_HAL_STA_INVALID_IDX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_HAL_HT_MIMO_PS_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wcn36xx_hal_config_sta_params*)* @wcn36xx_smd_set_sta_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_smd_set_sta_params(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wcn36xx_hal_config_sta_params* %3) #0 {
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wcn36xx_hal_config_sta_params*, align 8
  %9 = alloca %struct.wcn36xx_vif*, align 8
  %10 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wcn36xx_hal_config_sta_params* %3, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %11)
  store %struct.wcn36xx_vif* %12, %struct.wcn36xx_vif** %9, align 8
  store %struct.wcn36xx_sta* null, %struct.wcn36xx_sta** %10, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24, %18, %4
  %31 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %32 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @WCN36XX_HAL_STA_INVALID_IDX, align 4
  %34 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %34, i32 0, i32 18
  store i32 %33, i32* %35, align 8
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %38 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %9, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %42, i32 0, i32 18
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %46 = call i32 @WCN36XX_LISTEN_INTERVAL(%struct.wcn36xx* %45)
  %47 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %48 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %47, i32 0, i32 17
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %56 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %55, i32 0, i32 6
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32* %56, i32* %59, i32 %60)
  br label %70

62:                                               ; preds = %44
  %63 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %64 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %63, i32 0, i32 7
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy(i32* %64, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %54
  %71 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %9, align 8
  %72 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %75 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %74, i32 0, i32 16
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %77 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %79 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %78, i32 0, i32 15
  store i64 0, i64* %79, align 8
  %80 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %81 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %80, i32 0, i32 14
  store i64 0, i64* %81, align 8
  %82 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %83 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %82, i32 0, i32 13
  store i64 0, i64* %83, align 8
  %84 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %85 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %84, i32 0, i32 12
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @WCN36XX_HAL_HT_MIMO_PS_STATIC, align 4
  %87 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %88 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  %89 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %90 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %89, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %9, align 8
  %92 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %95 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 8
  %96 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %97 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %99 = icmp ne %struct.ieee80211_sta* %98, null
  br i1 %99, label %100, label %148

100:                                              ; preds = %70
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %102 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %101)
  store %struct.wcn36xx_sta* %102, %struct.wcn36xx_sta** %10, align 8
  %103 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %110 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %109, i32 0, i32 7
  %111 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @memcpy(i32* %110, i32* %113, i32 %114)
  br label %124

116:                                              ; preds = %100
  %117 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %118 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %117, i32 0, i32 6
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = call i32 @memcpy(i32* %118, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %108
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %129 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %134 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %136 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %139 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %141 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %142 = call i32 @wcn36xx_smd_set_sta_ht_params(%struct.ieee80211_sta* %140, %struct.wcn36xx_hal_config_sta_params* %141)
  %143 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %144 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %143, i32 0, i32 2
  %145 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %10, align 8
  %146 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %145, i32 0, i32 0
  %147 = call i32 @memcpy(i32* %144, i32* %146, i32 4)
  br label %154

148:                                              ; preds = %70
  %149 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %150 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %149, i32 0, i32 2
  %151 = call i32 @wcn36xx_set_default_rates(i32* %150)
  %152 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %153 = call i32 @wcn36xx_smd_set_sta_default_ht_params(%struct.wcn36xx_hal_config_sta_params* %152)
  br label %154

154:                                              ; preds = %148, %124
  ret void
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @WCN36XX_LISTEN_INTERVAL(%struct.wcn36xx*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_smd_set_sta_ht_params(%struct.ieee80211_sta*, %struct.wcn36xx_hal_config_sta_params*) #1

declare dso_local i32 @wcn36xx_set_default_rates(i32*) #1

declare dso_local i32 @wcn36xx_smd_set_sta_default_ht_params(%struct.wcn36xx_hal_config_sta_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
