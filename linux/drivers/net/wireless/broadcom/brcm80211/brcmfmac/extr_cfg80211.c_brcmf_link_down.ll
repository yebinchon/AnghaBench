; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_vif = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BRCMF_BUS_UP = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Call WLC_DISASSOC to stop excess roaming\0A\00", align 1
@BRCMF_C_DISASSOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"WLC_DISASSOC failed (%d)\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@BRCMF_SCAN_STATUS_SUPPRESS = common dso_local global i32 0, align 4
@BRCMF_BTCOEX_ENABLED = common dso_local global i32 0, align 4
@BRCMF_PROFILE_FWSUP_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_cfg80211_vif*, i32)* @brcmf_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_link_down(%struct.brcmf_cfg80211_vif* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.brcmf_cfg80211_vif* %0, %struct.brcmf_cfg80211_vif** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32 %12)
  store %struct.brcmf_cfg80211_info* %13, %struct.brcmf_cfg80211_info** %5, align 8
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 1
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %15, align 8
  store %struct.brcmf_pub* %16, %struct.brcmf_pub** %6, align 8
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %18 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BRCMF_BUS_UP, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %25 = load i32, i32* @TRACE, align 4
  %26 = call i32 @brcmf_dbg(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %28 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %28, i32 0, i32 2
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* @INFO, align 4
  %37 = call i32 @brcmf_dbg(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BRCMF_C_DISASSOC, align 4
  %42 = call i64 @brcmf_fil_cmd_data_set(i32 %40, i32 %41, i32* null, i32 0)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @bphy_err(%struct.brcmf_pub* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %45, %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %59 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %57, %50
  %65 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @cfg80211_disconnected(i32 %68, i32 %69, i32* null, i32 0, i32 1, i32 %70)
  br label %72

72:                                               ; preds = %64, %57
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %75 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %75, i32 0, i32 2
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load i32, i32* @BRCMF_SCAN_STATUS_SUPPRESS, align 4
  %79 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %79, i32 0, i32 0
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  %82 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %83 = load i32, i32* @BRCMF_BTCOEX_ENABLED, align 4
  %84 = call i32 @brcmf_btcoex_set_mode(%struct.brcmf_cfg80211_vif* %82, i32 %83, i32 0)
  %85 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %86 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BRCMF_PROFILE_FWSUP_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %73
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %96 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @brcmf_set_pmk(i32 %97, i32* null, i32 0)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i64, i64* @BRCMF_PROFILE_FWSUP_NONE, align 8
  %101 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %3, align 8
  %102 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %73
  %105 = load i32, i32* @TRACE, align 4
  %106 = call i32 @brcmf_dbg(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @brcmf_fil_cmd_data_set(i32, i32, i32*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @brcmf_btcoex_set_mode(%struct.brcmf_cfg80211_vif*, i32, i32) #1

declare dso_local i32 @brcmf_set_pmk(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
