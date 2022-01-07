; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32**, %struct.wil_ring_tx_data* }
%struct.wil_ring_tx_data = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"change station %pM mask 0x%x set 0x%x mid %d\0A\00", align 1
@disable_ap_sme = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not supported with AP SME enabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_STA_FLAG_AUTHORIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"station not found\0A\00", align 1
@ENOLINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ring data not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cid %d ring %d authorize %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @wil_cfg80211_change_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_change_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_parameters*, align 8
  %10 = alloca %struct.wil6210_vif*, align 8
  %11 = alloca %struct.wil6210_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %10, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %19 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %18)
  store %struct.wil6210_priv* %19, %struct.wil6210_priv** %11, align 8
  store %struct.wil_ring_tx_data* null, %struct.wil_ring_tx_data** %15, align 8
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %23 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %26 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %29 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @disable_ap_sme, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %36 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %121

39:                                               ; preds = %4
  %40 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %41 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %121

48:                                               ; preds = %39
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %51 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @wil_find_cid(%struct.wil6210_priv* %49, i32 %52, i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %59 = call i32 @wil_err(%struct.wil6210_priv* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOLINK, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %121

62:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %90, %62
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = call i32 @ARRAY_SIZE(i32** %67)
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %72 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %84 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %83, i32 0, i32 1
  %85 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %85, i64 %87
  store %struct.wil_ring_tx_data* %88, %struct.wil_ring_tx_data** %15, align 8
  br label %93

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %63

93:                                               ; preds = %82, %63
  %94 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %95 = icmp ne %struct.wil_ring_tx_data* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %98 = call i32 @wil_err(%struct.wil6210_priv* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ENOLINK, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %121

101:                                              ; preds = %93
  %102 = load %struct.station_parameters*, %struct.station_parameters** %9, align 8
  %103 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @NL80211_STA_FLAG_AUTHORIZED, align 4
  %106 = call i32 @BIT(i32 %105)
  %107 = and i32 %104, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %113 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %118 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %115, i32 %116, i32 %119)
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %101, %96, %57, %47, %34
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wil_find_cid(%struct.wil6210_priv*, i32, i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
