; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_af_searching_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_af_searching_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i32, %struct.TYPE_2__*, %struct.afx_hdl }
%struct.TYPE_2__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.afx_hdl = type { i32, i64, i32, i64, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL = common dso_local global i32 0, align 4
@P2P_INVALID_CHANNEL = common dso_local global i64 0, align 8
@P2P_CHANNEL_SYNC_RETRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Scheduling action frame for sending.. (%d)\0A\00", align 1
@P2P_AF_FRM_SCAN_MAX_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Scheduling listen peer, channel=%d\0A\00", align 1
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@P2P_DEFAULT_SLEEP_TIME_VSDB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Completed search/listen peer_chan=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_p2p_info*)* @brcmf_p2p_af_searching_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_p2p_af_searching_channel(%struct.brcmf_p2p_info* %0) #0 {
  %2 = alloca %struct.brcmf_p2p_info*, align 8
  %3 = alloca %struct.afx_hdl*, align 8
  %4 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %5 = alloca i64, align 8
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %2, align 8
  %6 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %6, i32 0, i32 2
  store %struct.afx_hdl* %7, %struct.afx_hdl** %3, align 8
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %15, align 8
  store %struct.brcmf_cfg80211_vif* %16, %struct.brcmf_cfg80211_vif** %4, align 8
  %17 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %18 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %17, i32 0, i32 4
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %21 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %21, i32 0, i32 0
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %25 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i64, i64* @P2P_INVALID_CHANNEL, align 8
  %27 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %28 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %116, %1
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @P2P_CHANNEL_SYNC_RETRY, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %35 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @P2P_INVALID_CHANNEL, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i1 [ false, %29 ], [ %38, %33 ]
  br i1 %40, label %41, label %117

41:                                               ; preds = %39
  %42 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %43 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @TRACE, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %48 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %47, i32 0, i32 5
  %49 = call i32 @schedule_work(i32* %48)
  %50 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %51 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %50, i32 0, i32 4
  %52 = load i32, i32* @P2P_AF_FRM_SCAN_MAX_WAIT, align 4
  %53 = call i32 @wait_for_completion_timeout(i32* %51, i32 %52)
  %54 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %55 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @P2P_INVALID_CHANNEL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %61 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %62 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %61, i32 0, i32 0
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59, %41
  br label %117

66:                                               ; preds = %59
  %67 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %68 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i32, i32* @TRACE, align 4
  %73 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %74 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %78 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %77, i32 0, i32 2
  store i32 1, i32* %78, align 8
  %79 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %80 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %79, i32 0, i32 5
  %81 = call i32 @schedule_work(i32* %80)
  %82 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %83 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %82, i32 0, i32 4
  %84 = load i32, i32* @P2P_AF_FRM_SCAN_MAX_WAIT, align 4
  %85 = call i32 @wait_for_completion_timeout(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %71, %66
  %87 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %88 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @P2P_INVALID_CHANNEL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %94 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %95 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92, %86
  br label %117

99:                                               ; preds = %92
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %5, align 8
  %102 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %103 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %104 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %109 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %4, align 8
  %110 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %109, i32 0, i32 0
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %99
  %114 = load i32, i32* @P2P_DEFAULT_SLEEP_TIME_VSDB, align 4
  %115 = call i32 @msleep(i32 %114)
  br label %116

116:                                              ; preds = %113, %107
  br label %29

117:                                              ; preds = %98, %65, %39
  %118 = load i32, i32* @TRACE, align 4
  %119 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %120 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %121)
  %123 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %124 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %126 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %2, align 8
  %127 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %126, i32 0, i32 0
  %128 = call i32 @clear_bit(i32 %125, i32* %127)
  %129 = load %struct.afx_hdl*, %struct.afx_hdl** %3, align 8
  %130 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  ret i64 %131
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
