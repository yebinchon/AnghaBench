; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, i32, %struct.brcms_bss_cfg* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i64, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.brcms_bss_cfg = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4313 = common dso_local global i64 0, align 8
@BFL_FEM_BT = common dso_local global i32 0, align 4
@MHF5 = common dso_local global i32 0, align 4
@MHF5_4313_GPIOCTRL = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@MHF4 = common dso_local global i32 0, align 4
@MHF4_EXTPA_ENABLE = common dso_local global i32 0, align 4
@WL_RADIO_HW_DISABLE = common dso_local global i32 0, align 4
@BRCMS_TYPE_STATION = common dso_local global i64 0, align 8
@BRCMS_TYPE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"wl%d: up: rfdisable -> bsscfg_disable()\0A\00", align 1
@MHF1 = common dso_local global i32 0, align 4
@MHF1_EDCF = common dso_local global i32 0, align 4
@TIMER_INTERVAL_WATCHDOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_up(%struct.brcms_c_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_bss_cfg*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 5
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 6
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @brcms_dbg_info(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 6
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %26 = call i64 @brcms_deviceremoved(%struct.brcms_c_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @ENOMEDIUM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %242

31:                                               ; preds = %24
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 5
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = call i32 @brcms_b_hw_up(%struct.TYPE_15__* %41)
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 6
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 6
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BFL_FEM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %47
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 5
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ai_get_chip_id(i32 %61)
  %63 = load i64, i64* @BCMA_CHIP_ID_BCM4313, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %56
  %66 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %67 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %66, i32 0, i32 6
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 4688
  br i1 %71, label %72, label %90

72:                                               ; preds = %65
  %73 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %73, i32 0, i32 6
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BFL_FEM_BT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 5
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = load i32, i32* @MHF5, align 4
  %86 = load i32, i32* @MHF5_4313_GPIOCTRL, align 4
  %87 = load i32, i32* @MHF5_4313_GPIOCTRL, align 4
  %88 = load i32, i32* @BRCM_BAND_ALL, align 4
  %89 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %72, %65
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %91, i32 0, i32 5
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load i32, i32* @MHF4, align 4
  %95 = load i32, i32* @MHF4_EXTPA_ENABLE, align 4
  %96 = load i32, i32* @MHF4_EXTPA_ENABLE, align 4
  %97 = load i32, i32* @BRCM_BAND_ALL, align 4
  %98 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %99, %56, %47
  %101 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %101, i32 0, i32 6
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %162, label %107

107:                                              ; preds = %100
  %108 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %108, i32 0, i32 5
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = call i32 @brcms_b_up_prep(%struct.TYPE_15__* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @ENOMEDIUM, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %161

116:                                              ; preds = %107
  %117 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %118 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %117, i32 0, i32 6
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @WL_RADIO_HW_DISABLE, align 4
  %123 = call i32 @mboolisset(i64 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %116
  %126 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %127 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %126, i32 0, i32 8
  %128 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %127, align 8
  store %struct.brcms_bss_cfg* %128, %struct.brcms_bss_cfg** %6, align 8
  %129 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %130 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %129, i32 0, i32 6
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @WL_RADIO_HW_DISABLE, align 4
  %135 = call i32 @mboolset(i64 %133, i32 %134)
  %136 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %6, align 8
  %137 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @BRCMS_TYPE_STATION, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %125
  %142 = load %struct.brcms_bss_cfg*, %struct.brcms_bss_cfg** %6, align 8
  %143 = getelementptr inbounds %struct.brcms_bss_cfg, %struct.brcms_bss_cfg* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BRCMS_TYPE_ADHOC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141, %125
  %148 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %149 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %148, i32 0, i32 5
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %154 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %153, i32 0, i32 6
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @brcms_err(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %147, %141
  br label %160

160:                                              ; preds = %159, %116
  br label %161

161:                                              ; preds = %160, %107
  br label %162

162:                                              ; preds = %161, %100
  %163 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %164 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %163, i32 0, i32 6
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %171 = call i32 @brcms_c_radio_monitor_start(%struct.brcms_c_info* %170)
  store i32 0, i32* %2, align 4
  br label %242

172:                                              ; preds = %162
  %173 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %174 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %176 = call i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info* %175)
  %177 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %178 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %177, i32 0, i32 5
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = load i32, i32* @MHF1, align 4
  %181 = load i32, i32* @MHF1_EDCF, align 4
  %182 = load i32, i32* @MHF1_EDCF, align 4
  %183 = load i32, i32* @BRCM_BAND_ALL, align 4
  %184 = call i32 @brcms_b_mhf(%struct.TYPE_15__* %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %186 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @brcms_init(i32 %187)
  %189 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %190 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %189, i32 0, i32 6
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 3
  store i32 1, i32* %192, align 4
  %193 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %194 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %172
  %198 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %199 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %198, i32 0, i32 6
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %205, align 8
  store %struct.ieee80211_channel* %206, %struct.ieee80211_channel** %4, align 8
  %207 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %208 = call i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info* %207)
  %209 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %210 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %211 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ch20mhz_chspec(i32 %212)
  %214 = call i32 @brcms_c_set_chanspec(%struct.brcms_c_info* %209, i32 %213)
  %215 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %216 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %215, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %218 = call i32 @brcms_c_enable_mac(%struct.brcms_c_info* %217)
  br label %219

219:                                              ; preds = %197, %172
  %220 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %221 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %220, i32 0, i32 5
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = call i32 @brcms_b_up_finish(%struct.TYPE_15__* %222)
  %224 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %225 = call i32 @brcms_c_wme_retries_write(%struct.brcms_c_info* %224)
  %226 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %227 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @TIMER_INTERVAL_WATCHDOG, align 4
  %230 = call i32 @brcms_add_timer(i32 %228, i32 %229, i32 1)
  %231 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %232 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %231, i32 0, i32 2
  store i32 1, i32* %232, align 8
  %233 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %234 = call i32 @brcms_c_stf_phy_txant_upd(%struct.brcms_c_info* %233)
  %235 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %236 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %237 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %236, i32 0, i32 3
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @brcms_c_ht_update_ldpc(%struct.brcms_c_info* %235, i32 %240)
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %219, %169, %28
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i64 @brcms_deviceremoved(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_hw_up(%struct.TYPE_15__*) #1

declare dso_local i64 @ai_get_chip_id(i32) #1

declare dso_local i32 @brcms_b_mhf(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @brcms_b_up_prep(%struct.TYPE_15__*) #1

declare dso_local i32 @mboolisset(i64, i32) #1

declare dso_local i32 @mboolset(i64, i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i32 @brcms_c_radio_monitor_start(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_init(i32) #1

declare dso_local i32 @brcms_c_suspend_mac_and_wait(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_set_chanspec(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @ch20mhz_chspec(i32) #1

declare dso_local i32 @brcms_c_enable_mac(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_up_finish(%struct.TYPE_15__*) #1

declare dso_local i32 @brcms_c_wme_retries_write(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_add_timer(i32, i32, i32) #1

declare dso_local i32 @brcms_c_stf_phy_txant_upd(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_ht_update_ldpc(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
