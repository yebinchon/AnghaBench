; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@AR_BTCOEX_CTRL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_MCI_MODE_EN = common dso_local global i32 0, align 4
@AR_MCI_GPM_1 = common dso_local global i32 0, align 4
@AR_MCI_GPM_WRITE_PTR = common dso_local global i32 0, align 4
@AR_MCI_RX_STATUS = common dso_local global i32 0, align 4
@AR_MCI_RX_LAST_SCHD_MSG_INDEX = common dso_local global i32 0, align 4
@AR_MCI_RX_REMOTE_SLEEP = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i8* null, align 8
@MCI_BT_AWAKE = common dso_local global i8* null, align 8
@ATH_MCI_CONFIG_MCI_OBS_MASK = common dso_local global i32 0, align 4
@AR_GLB_GPIO_CONTROL = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_MCI_OBS_GPIO = common dso_local global i32 0, align 4
@MCI_GPM_COEX_QUERY_BT_TOPOLOGY = common dso_local global i32 0, align 4
@MCI_RECOVERY_DUR_TSF = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(MCI) ignore Rx recovery\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"(MCI) RECOVER RX\0A\00", align 1
@ATH_MCI_CONFIG_DISABLE_FTP_STOMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_state(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %217 [
    i32 139, label %13
    i32 138, label %33
    i32 137, label %52
    i32 133, label %60
    i32 128, label %74
    i32 132, label %92
    i32 129, label %116
    i32 130, label %119
    i32 131, label %122
    i32 134, label %127
    i32 135, label %160
    i32 136, label %169
    i32 143, label %185
    i32 140, label %193
    i32 142, label %201
    i32 141, label %209
  ]

13:                                               ; preds = %2
  %14 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %21 = call i32 @REG_READ(%struct.ath_hw* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -559038737
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @AR_BTCOEX_CTRL_MCI_MODE_EN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %218

33:                                               ; preds = %2
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = load i32, i32* @AR_MCI_GPM_1, align 4
  %36 = call i32 @REG_READ(%struct.ath_hw* %34, i32 %35)
  %37 = load i32, i32* @AR_MCI_GPM_WRITE_PTR, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %41 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %47 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %50 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %218

52:                                               ; preds = %2
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = load i32, i32* @AR_MCI_RX_STATUS, align 4
  %55 = call i32 @REG_READ(%struct.ath_hw* %53, i32 %54)
  %56 = load i32, i32* @AR_MCI_RX_LAST_SCHD_MSG_INDEX, align 4
  %57 = call i32 @MS(i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 4
  store i32 %59, i32* %6, align 4
  br label %218

60:                                               ; preds = %2
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_MCI_RX_STATUS, align 4
  %63 = call i32 @REG_READ(%struct.ath_hw* %61, i32 %62)
  %64 = load i32, i32* @AR_MCI_RX_REMOTE_SLEEP, align 4
  %65 = call i32 @MS(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i8*, i8** @MCI_BT_SLEEP, align 8
  br label %71

69:                                               ; preds = %60
  %70 = load i8*, i8** @MCI_BT_AWAKE, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i8* [ %68, %67 ], [ %70, %69 ]
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %6, align 4
  br label %218

74:                                               ; preds = %2
  %75 = load i8*, i8** @MCI_BT_AWAKE, align 8
  %76 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %77 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = call i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw* %78, i32 1)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %80, i32 1)
  %82 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %83 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %88 = call i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw* %87, i32 0, i32 1)
  br label %89

89:                                               ; preds = %86, %74
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %90, i32 0)
  br label %218

92:                                               ; preds = %2
  %93 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %94 = call i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw* %93)
  %95 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %96 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %98 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %92
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = load i32, i32* @AR_GLB_GPIO_CONTROL, align 4
  %106 = call i32 @REG_READ(%struct.ath_hw* %104, i32 %105)
  %107 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_GPIO, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_GPIO, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = call i32 @ar9003_mci_observation_set_up(%struct.ath_hw* %112)
  br label %114

114:                                              ; preds = %111, %103
  br label %115

115:                                              ; preds = %114, %92
  br label %218

116:                                              ; preds = %2
  %117 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %118 = call i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw* %117, i32 1)
  br label %218

119:                                              ; preds = %2
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = call i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw* %120, i32 1)
  br label %218

122:                                              ; preds = %2
  %123 = load i32, i32* @MCI_GPM_COEX_QUERY_BT_TOPOLOGY, align 4
  store i32 %123, i32* %8, align 4
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @ar9003_mci_send_coex_bt_status_query(%struct.ath_hw* %124, i32 1, i32 %125)
  br label %218

127:                                              ; preds = %2
  %128 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %129 = call i32 @ath9k_hw_gettsf32(%struct.ath_hw* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %132 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = load i32, i32* @MCI_RECOVERY_DUR_TSF, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %139 = call i32 @ath9k_hw_common(%struct.ath_hw* %138)
  %140 = load i32, i32* @MCI, align 4
  %141 = call i32 @ath_dbg(i32 %139, i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %218

142:                                              ; preds = %127
  %143 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %144 = call i32 @ath9k_hw_common(%struct.ath_hw* %143)
  %145 = load i32, i32* @MCI, align 4
  %146 = call i32 @ath_dbg(i32 %144, i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %149 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %151 = call i32 @ar9003_mci_prep_interface(%struct.ath_hw* %150)
  %152 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %153 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %152, i32 0, i32 5
  store i32 1, i32* %153, align 4
  %154 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %155 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %154, i32 0, i32 6
  store i32 1, i32* %155, align 8
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %156, i32 1)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %159 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %158, i32 0)
  br label %218

160:                                              ; preds = %2
  %161 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %162 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_FTP_STOMP, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %6, align 4
  br label %218

169:                                              ; preds = %2
  %170 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %171 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %176 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi i1 [ false, %169 ], [ %178, %174 ]
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  store i32 %182, i32* %6, align 4
  %183 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %184 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %183, i32 0, i32 6
  store i32 0, i32* %184, align 8
  br label %218

185:                                              ; preds = %2
  %186 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %187 = call i32 @ath9k_hw_is_aic_enabled(%struct.ath_hw* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %191 = call i32 @ar9003_aic_calibration(%struct.ath_hw* %190)
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %189, %185
  br label %218

193:                                              ; preds = %2
  %194 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %195 = call i32 @ath9k_hw_is_aic_enabled(%struct.ath_hw* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %199 = call i32 @ar9003_aic_start_normal(%struct.ath_hw* %198)
  br label %200

200:                                              ; preds = %197, %193
  br label %218

201:                                              ; preds = %2
  %202 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %203 = call i32 @ath9k_hw_is_aic_enabled(%struct.ath_hw* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %207 = call i32 @ar9003_aic_cal_reset(%struct.ath_hw* %206)
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %205, %201
  br label %218

209:                                              ; preds = %2
  %210 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %211 = call i32 @ath9k_hw_is_aic_enabled(%struct.ath_hw* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %215 = call i32 @ar9003_aic_calibration_single(%struct.ath_hw* %214)
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %213, %209
  br label %218

217:                                              ; preds = %2
  br label %218

218:                                              ; preds = %217, %216, %208, %200, %192, %179, %160, %142, %137, %122, %119, %116, %115, %89, %71, %52, %51, %29
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_2g5g_switch(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_observation_set_up(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_bt_status_query(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gettsf32(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_prep_interface(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_is_aic_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_aic_calibration(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_aic_start_normal(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_aic_cal_reset(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_aic_calibration_single(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
