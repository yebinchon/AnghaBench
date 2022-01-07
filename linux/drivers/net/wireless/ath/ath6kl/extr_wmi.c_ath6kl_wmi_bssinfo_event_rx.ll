; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bssinfo_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_bssinfo_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { i32, i32 }
%struct.ath6kl_vif = type { i32, i32, i32, i32, i32 }
%struct.wmi_bss_info_hdr2 = type { i32, i64, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"bss info evt - ch %u, snr %d, rssi %d, bssid \22%pM\22 frame_type=%d\0A\00", align 1
@BEACON_FTYPE = common dso_local global i64 0, align 8
@PROBERESP_FTYPE = common dso_local global i64 0, align 8
@CLEAR_BSSFILTER_ON_BEACON = common dso_local global i32 0, align 4
@NONE_BSS_FILTER = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@DTIM_PERIOD_AVAIL = common dso_local global i32 0, align 4
@CFG80211_BSS_FTYPE_BEACON = common dso_local global i32 0, align 4
@CFG80211_BSS_FTYPE_PRESP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCHED_SCANNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH6KL_SCHED_SCAN_RESULT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_bssinfo_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_bssinfo_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_bss_info_hdr2*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca %struct.ath6kl*, align 8
  %14 = alloca %struct.cfg80211_bss*, align 8
  %15 = alloca i32*, align 8
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %16 = load %struct.wmi*, %struct.wmi** %6, align 8
  %17 = getelementptr inbounds %struct.wmi, %struct.wmi* %16, i32 0, i32 0
  %18 = load %struct.ath6kl*, %struct.ath6kl** %17, align 8
  store %struct.ath6kl* %18, %struct.ath6kl** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ule i64 %20, 24
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %232

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.wmi_bss_info_hdr2*
  store %struct.wmi_bss_info_hdr2* %27, %struct.wmi_bss_info_hdr2** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 24
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 24
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %35 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %36 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %39 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %42 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 95
  %45 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %46 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %49 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ath6kl_dbg(i32 %34, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %44, i32 %47, i64 %50)
  %52 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %53 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BEACON_FTYPE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %25
  %58 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %59 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PROBERESP_FTYPE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %232

64:                                               ; preds = %57, %25
  %65 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %66 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BEACON_FTYPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i32, i32* @CLEAR_BSSFILTER_ON_BEACON, align 4
  %72 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %73 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load i32, i32* @CLEAR_BSSFILTER_ON_BEACON, align 4
  %78 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %79 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %78, i32 0, i32 2
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  %81 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %82 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %85 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NONE_BSS_FILTER, align 4
  %88 = call i32 @ath6kl_wmi_bssfilter_cmd(i32 %83, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %76, %70, %64
  %90 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %91 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %94 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %92, i32 %96)
  store %struct.ieee80211_channel* %97, %struct.ieee80211_channel** %12, align 8
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %99 = icmp eq %struct.ieee80211_channel* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %232

103:                                              ; preds = %89
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 12
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %232

109:                                              ; preds = %103
  %110 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %111 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BEACON_FTYPE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %160

115:                                              ; preds = %109
  %116 = load i32, i32* @CONNECTED, align 4
  %117 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %118 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %117, i32 0, i32 2
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %160

121:                                              ; preds = %115
  %122 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %123 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %126 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ETH_ALEN, align 4
  %129 = call i64 @memcmp(i32 %124, i32 %127, i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %121
  %132 = load i32, i32* @WLAN_EID_TIM, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 8
  %139 = sub nsw i32 %138, 2
  %140 = sub nsw i32 %139, 2
  %141 = call i32* @cfg80211_find_ie(i32 %132, i32* %136, i32 %140)
  store i32* %141, i32** %15, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %131
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %147, 2
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i32*, i32** %15, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %154 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @DTIM_PERIOD_AVAIL, align 4
  %156 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %157 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %156, i32 0, i32 2
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %149, %144, %131
  br label %160

160:                                              ; preds = %159, %121, %115, %109
  %161 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %162 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %165 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %166 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @BEACON_FTYPE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i32, i32* @CFG80211_BSS_FTYPE_BEACON, align 4
  br label %174

172:                                              ; preds = %160
  %173 = load i32, i32* @CFG80211_BSS_FTYPE_PRESP, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %177 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @get_unaligned_le64(i32* %179)
  %181 = load i32*, i32** %11, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 5
  %183 = call i32 @get_unaligned_le16(i32* %182)
  %184 = load i32*, i32** %11, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  %186 = call i32 @get_unaligned_le16(i32* %185)
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %191, 8
  %193 = sub nsw i32 %192, 2
  %194 = sub nsw i32 %193, 2
  %195 = load %struct.wmi_bss_info_hdr2*, %struct.wmi_bss_info_hdr2** %10, align 8
  %196 = getelementptr inbounds %struct.wmi_bss_info_hdr2, %struct.wmi_bss_info_hdr2* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %197, 95
  %199 = mul nsw i32 %198, 100
  %200 = load i32, i32* @GFP_ATOMIC, align 4
  %201 = call %struct.cfg80211_bss* @cfg80211_inform_bss(i32 %163, %struct.ieee80211_channel* %164, i32 %175, i32 %178, i32 %180, i32 %183, i32 %186, i32* %190, i32 %194, i32 %199, i32 %200)
  store %struct.cfg80211_bss* %201, %struct.cfg80211_bss** %14, align 8
  %202 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %14, align 8
  %203 = icmp eq %struct.cfg80211_bss* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %174
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %5, align 4
  br label %232

207:                                              ; preds = %174
  %208 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  %209 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %14, align 8
  %212 = call i32 @cfg80211_put_bss(i32 %210, %struct.cfg80211_bss* %211)
  %213 = load i32, i32* @SCHED_SCANNING, align 4
  %214 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %215 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %214, i32 0, i32 2
  %216 = call i64 @test_bit(i32 %213, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %207
  %219 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %220 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %219, i32 0, i32 1
  %221 = call i32 @timer_pending(i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %218
  %224 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %225 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %224, i32 0, i32 1
  %226 = load i64, i64* @jiffies, align 8
  %227 = load i32, i32* @ATH6KL_SCHED_SCAN_RESULT_DELAY, align 4
  %228 = call i64 @msecs_to_jiffies(i32 %227)
  %229 = add nsw i64 %226, %228
  %230 = call i32 @mod_timer(i32* %225, i64 %229)
  br label %231

231:                                              ; preds = %223, %218, %207
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %231, %204, %106, %100, %63, %22
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(i32, i32, i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(i32, %struct.ieee80211_channel*, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le64(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
