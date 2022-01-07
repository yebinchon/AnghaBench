; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_run_escan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_run_escan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub*, %struct.brcmf_p2p_info }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_p2p_info = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.brcmf_cfg80211_vif* }
%struct.brcmf_cfg80211_vif = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.cfg80211_scan_request = type { i32, %struct.ieee80211_channel** }
%struct.ieee80211_channel = type { i64, i32 }

@WL_P2P_DISC_ST_SCAN = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@P2PAPI_BSSCFG_CONNECTION = common dso_local global i64 0, align 8
@SOCIAL_CHAN_1 = common dso_local global i64 0, align 8
@SOCIAL_CHAN_2 = common dso_local global i64 0, align 8
@SOCIAL_CHAN_3 = common dso_local global i64 0, align 8
@WL_P2P_DISC_ST_SEARCH = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"P2P SEARCH PHASE START\0A\00", align 1
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Already a GO. Do SEARCH Only\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"P2P SCAN STATE START\0A\00", align 1
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"%d: chan=%d, channel spec=%x\0A\00", align 1
@P2PAPI_BSSCFG_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.brcmf_if*, %struct.cfg80211_scan_request*)* @brcmf_p2p_run_escan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_run_escan(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_if* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca %struct.brcmf_p2p_info*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ieee80211_channel*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_if* %1, %struct.brcmf_if** %5, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %6, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 1
  store %struct.brcmf_p2p_info* %18, %struct.brcmf_p2p_info** %7, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %19, i32 0, i32 0
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %20, align 8
  store %struct.brcmf_pub* %21, %struct.brcmf_pub** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @WL_P2P_DISC_ST_SCAN, align 4
  store i32 %22, i32* %10, align 4
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @TRACE, align 4
  %24 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %26 = icmp ne %struct.cfg80211_scan_request* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %179

30:                                               ; preds = %3
  %31 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %178

35:                                               ; preds = %30
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %37 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @kcalloc(i32 %38, i32 4, i32 %39)
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %179

46:                                               ; preds = %35
  %47 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %7, align 8
  %48 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* @P2PAPI_BSSCFG_CONNECTION, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %52, align 8
  store %struct.brcmf_cfg80211_vif* %53, %struct.brcmf_cfg80211_vif** %11, align 8
  %54 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %55 = icmp ne %struct.brcmf_cfg80211_vif* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %58 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  store %struct.net_device* %60, %struct.net_device** %12, align 8
  br label %61

61:                                               ; preds = %56, %46
  %62 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %63 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %66, label %100

66:                                               ; preds = %61
  %67 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %68 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %68, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %69, i64 0
  %71 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %70, align 8
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SOCIAL_CHAN_1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %66
  %77 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %78 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %77, i32 0, i32 1
  %79 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %78, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %79, i64 1
  %81 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %80, align 8
  %82 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SOCIAL_CHAN_2, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %88 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %87, i32 0, i32 1
  %89 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %88, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %89, i64 2
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %90, align 8
  %92 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SOCIAL_CHAN_3, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @WL_P2P_DISC_ST_SEARCH, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @INFO, align 4
  %99 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %118

100:                                              ; preds = %86, %76, %66, %61
  %101 = load %struct.net_device*, %struct.net_device** %12, align 8
  %102 = icmp ne %struct.net_device* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %105 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @INFO, align 4
  %112 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @WL_P2P_DISC_ST_SEARCH, align 4
  store i32 %113, i32* %10, align 4
  br label %117

114:                                              ; preds = %103, %100
  %115 = load i32, i32* @INFO, align 4
  %116 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %96
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %166, %118
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %122 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %127 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %126, i32 0, i32 1
  %128 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %128, i64 %130
  %132 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %131, align 8
  store %struct.ieee80211_channel* %132, %struct.ieee80211_channel** %16, align 8
  %133 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %134 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %137 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %166

142:                                              ; preds = %125
  %143 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %7, align 8
  %144 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %148 = call i32 @channel_to_chanspec(i32* %146, %struct.ieee80211_channel* %147)
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* @INFO, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %156 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %154, i64 %157, i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %142, %141
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %119

169:                                              ; preds = %119
  %170 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %7, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @P2PAPI_BSSCFG_DEVICE, align 4
  %175 = call i32 @brcmf_p2p_escan(%struct.brcmf_p2p_info* %170, i32 %171, i32* %172, i32 %173, i32 %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32*, i32** %15, align 8
  %177 = call i32 @kfree(i32* %176)
  br label %178

178:                                              ; preds = %169, %30
  br label %179

179:                                              ; preds = %178, %43, %27
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @bphy_err(%struct.brcmf_pub* %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %182, %179
  %187 = load i32, i32* %9, align 4
  ret i32 %187
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @channel_to_chanspec(i32*, %struct.ieee80211_channel*) #1

declare dso_local i32 @brcmf_p2p_escan(%struct.brcmf_p2p_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
