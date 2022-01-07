; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_tx_action_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_tx_action_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_p2p_info = type { i64, i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_fil_af_params_le = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_P2P_STATUS_ACTION_TX_COMPLETED = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_ACTION_TX_NOACK = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"actframe\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" sending action frame has failed\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@BRCMF_P2P_STATUS_DISCOVER_LISTEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Waiting for %s tx completion event\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"off-channel\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"on-channel\00", align 1
@P2P_AF_MAX_WAIT_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"TX action frame operation is success\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"TX action frame operation has failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_p2p_info*, %struct.brcmf_fil_af_params_le*)* @brcmf_p2p_tx_action_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_tx_action_frame(%struct.brcmf_p2p_info* %0, %struct.brcmf_fil_af_params_le* %1) #0 {
  %3 = alloca %struct.brcmf_p2p_info*, align 8
  %4 = alloca %struct.brcmf_fil_af_params_le*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_p2p_info* %0, %struct.brcmf_p2p_info** %3, align 8
  store %struct.brcmf_fil_af_params_le* %1, %struct.brcmf_fil_af_params_le** %4, align 8
  %9 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %9, i32 0, i32 7
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %12, align 8
  store %struct.brcmf_pub* %13, %struct.brcmf_pub** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @TRACE, align 4
  %15 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %16, i32 0, i32 3
  %18 = call i32 @reinit_completion(i32* %17)
  %19 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, align 4
  %20 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %20, i32 0, i32 2
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_NOACK, align 4
  %24 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %24, i32 0, i32 2
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %27, i32 0, i32 6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* @P2PAPI_BSSCFG_DEVICE, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %32, align 8
  store %struct.brcmf_cfg80211_vif* %33, %struct.brcmf_cfg80211_vif** %6, align 8
  %34 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %6, align 8
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %4, align 8
  %38 = call i32 @brcmf_fil_bsscfg_data_set(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_fil_af_params_le* %37, i32 4)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %43 = call i32 @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %110

44:                                               ; preds = %2
  %45 = load %struct.brcmf_fil_af_params_le*, %struct.brcmf_fil_af_params_le** %4, align 8
  %46 = getelementptr inbounds %struct.brcmf_fil_af_params_le, %struct.brcmf_fil_af_params_le* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %53 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @BRCMF_P2P_STATUS_DISCOVER_LISTEN, align 4
  %55 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %56 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %55, i32 0, i32 2
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %44
  %60 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %61 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %64 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ieee80211_frequency_to_channel(i32 %66)
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %71 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %75

72:                                               ; preds = %59, %44
  %73 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* @TRACE, align 4
  %77 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %78 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)
  %83 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %85 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %84, i32 0, i32 3
  %86 = load i32, i32* @P2P_AF_MAX_WAIT_TIME, align 4
  %87 = call i32 @wait_for_completion_timeout(i32* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, align 4
  %89 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %90 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %89, i32 0, i32 2
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = load i32, i32* @TRACE, align 4
  %95 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %101

96:                                               ; preds = %75
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @TRACE, align 4
  %100 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, align 4
  %103 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %104 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %103, i32 0, i32 2
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  %106 = load i32, i32* @BRCMF_P2P_STATUS_ACTION_TX_NOACK, align 4
  %107 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %3, align 8
  %108 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %107, i32 0, i32 2
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %101, %41
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @brcmf_fil_bsscfg_data_set(i32, i8*, %struct.brcmf_fil_af_params_le*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
