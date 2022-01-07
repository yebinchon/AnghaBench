; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_rx_mgmt_p2p_probereq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_notify_rx_mgmt_p2p_probereq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_cfg80211_vif*, %struct.TYPE_3__* }
%struct.brcmf_cfg80211_vif = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__, %struct.brcmf_p2p_info }
%struct.TYPE_4__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i64, i32, i32 }
%struct.brcmf_p2p_info = type { i32, %struct.afx_hdl }
%struct.afx_hdl = type { i32, i32, i32 }
%struct.brcmf_event_msg = type { i32, i64, i32, i32, i32 }
%struct.brcmf_rx_mgmt_data = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Enter: event %d reason %d\0A\00", align 1
@SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Event data to small. Ignore\0A\00", align 1
@BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"PROBE REQUEST: Peer found, channel=%d\0A\00", align 1
@BRCMF_P2P_STATUS_GO_NEG_PHASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Filtering P2P probe_req in GO-NEG phase\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vif->mgmt_rx_reg %04x\0A\00", align 1
@IEEE80211_STYPE_PROBE_REQ = common dso_local global i32 0, align 4
@IEEE80211_FCTL_STYPE = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_2G = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"mgmt_frame_len (%d) , e->datalen (%d), chanspec (%04x), freq (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_notify_rx_mgmt_p2p_probereq(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcmf_cfg80211_info*, align 8
  %9 = alloca %struct.brcmf_p2p_info*, align 8
  %10 = alloca %struct.afx_hdl*, align 8
  %11 = alloca %struct.brcmf_cfg80211_vif*, align 8
  %12 = alloca %struct.brcmf_rx_mgmt_data*, align 8
  %13 = alloca %struct.brcmu_chan, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %21, align 8
  store %struct.brcmf_cfg80211_info* %22, %struct.brcmf_cfg80211_info** %8, align 8
  %23 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %24 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %23, i32 0, i32 1
  store %struct.brcmf_p2p_info* %24, %struct.brcmf_p2p_info** %9, align 8
  %25 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %26 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %25, i32 0, i32 1
  store %struct.afx_hdl* %26, %struct.afx_hdl** %10, align 8
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %28 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %27, i32 0, i32 0
  %29 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %28, align 8
  store %struct.brcmf_cfg80211_vif* %29, %struct.brcmf_cfg80211_vif** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.brcmf_rx_mgmt_data*
  store %struct.brcmf_rx_mgmt_data* %31, %struct.brcmf_rx_mgmt_data** %12, align 8
  %32 = load i32, i32* @INFO, align 4
  %33 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %34 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %41 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @SCAN, align 4
  %47 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %157

48:                                               ; preds = %3
  %49 = load %struct.brcmf_rx_mgmt_data*, %struct.brcmf_rx_mgmt_data** %12, align 8
  %50 = getelementptr inbounds %struct.brcmf_rx_mgmt_data, %struct.brcmf_rx_mgmt_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %8, align 8
  %55 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %56, align 8
  %58 = call i32 %57(%struct.brcmu_chan* %13)
  %59 = load i32, i32* @BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, align 4
  %60 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %61 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %48
  %65 = load %struct.afx_hdl*, %struct.afx_hdl** %10, align 8
  %66 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %69 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @ether_addr_equal(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.afx_hdl*, %struct.afx_hdl** %10, align 8
  %77 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @INFO, align 4
  %79 = load %struct.afx_hdl*, %struct.afx_hdl** %10, align 8
  %80 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.afx_hdl*, %struct.afx_hdl** %10, align 8
  %84 = getelementptr inbounds %struct.afx_hdl, %struct.afx_hdl* %83, i32 0, i32 0
  %85 = call i32 @complete(i32* %84)
  br label %86

86:                                               ; preds = %73, %64, %48
  %87 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %88 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %157

92:                                               ; preds = %86
  %93 = load i32, i32* @BRCMF_P2P_STATUS_GO_NEG_PHASE, align 4
  %94 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %9, align 8
  %95 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* @INFO, align 4
  %100 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %157

101:                                              ; preds = %92
  %102 = load i32, i32* @INFO, align 4
  %103 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %104 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @IEEE80211_STYPE_PROBE_REQ, align 4
  %108 = load i32, i32* @IEEE80211_FCTL_STYPE, align 4
  %109 = and i32 %107, %108
  %110 = ashr i32 %109, 4
  store i32 %110, i32* %17, align 4
  %111 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %112 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @BIT(i32 %114)
  %116 = and i32 %113, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %157

119:                                              ; preds = %101
  %120 = load %struct.brcmf_rx_mgmt_data*, %struct.brcmf_rx_mgmt_data** %12, align 8
  %121 = getelementptr inbounds %struct.brcmf_rx_mgmt_data, %struct.brcmf_rx_mgmt_data* %120, i64 1
  %122 = bitcast %struct.brcmf_rx_mgmt_data* %121 to i32*
  store i32* %122, i32** %14, align 8
  %123 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %124 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = sub i64 %126, 4
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %15, align 4
  %129 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %139

137:                                              ; preds = %119
  %138 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = call i32 @ieee80211_channel_to_frequency(i32 %130, i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load %struct.brcmf_cfg80211_vif*, %struct.brcmf_cfg80211_vif** %11, align 8
  %143 = getelementptr inbounds %struct.brcmf_cfg80211_vif, %struct.brcmf_cfg80211_vif* %142, i32 0, i32 1
  %144 = load i32, i32* %16, align 4
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @cfg80211_rx_mgmt(i32* %143, i32 %144, i32 0, i32* %145, i32 %146, i32 0)
  %148 = load i32, i32* @INFO, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %151 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %148, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %152, i32 %154, i32 %155)
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %139, %118, %98, %91, %45
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @cfg80211_rx_mgmt(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
