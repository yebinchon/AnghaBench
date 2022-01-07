; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw*, %struct.ath_mci_coex }
%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32 }
%struct.ath_mci_coex = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ath_common = type { i32 }

@MCI_GPM_MORE = common dso_local global i32 0, align 4
@MCI_STATE_ENABLE = common dso_local global i32 0, align 4
@MCI_STATE_INIT_GPM_OFFSET = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE = common dso_local global i32 0, align 4
@__const.ath_mci_intr.payload = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -256], align 16
@MCI_REMOTE_RESET = common dso_local global i32 0, align 4
@MCI_SYS_WAKING = common dso_local global i32 0, align 4
@MCI_STATE_RESET_REQ_WAKE = common dso_local global i32 0, align 4
@MCI_STATE_SET_BT_AWAKE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_STATE_REMOTE_SLEEP = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING = common dso_local global i32 0, align 4
@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_RX_INVALID_HDR = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT = common dso_local global i32 0, align 4
@MCI_STATE_RECOVER_RX = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO = common dso_local global i32 0, align 4
@MCI_STATE_LAST_SCHD_MSG_OFFSET = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_GPM = common dso_local global i32 0, align 4
@ATH_OP_HW_RESET = common dso_local global i32 0, align 4
@MCI_GPM_INVALID = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_HW_MSG_MASK = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_LNA_INFO = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_INFO = common dso_local global i32 0, align 4
@AR_MCI_CONT_RSSI_POWER = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MCI CONT_INFO: (%s) pri = %d pwr = %d dBm\0A\00", align 1
@AR_MCI_CONT_TXRX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@AR_MCI_CONT_PRIORITY = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_NACK = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_CONT_RST = common dso_local global i32 0, align 4
@MCI_GPM_COEX_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_mci_intr(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_mci_coex*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_hw_mci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  store %struct.ath_mci_coex* %18, %struct.ath_mci_coex** %3, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %4, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %5, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.ath9k_hw_mci* %26, %struct.ath9k_hw_mci** %6, align 8
  %27 = load i32, i32* @MCI_GPM_MORE, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load %struct.ath_hw*, %struct.ath_hw** %29, align 8
  %31 = call i32 @ar9003_mci_get_interrupt(%struct.ath_hw* %30, i32* %7, i32* %8)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = load i32, i32* @MCI_STATE_ENABLE, align 4
  %34 = call i64 @ar9003_mci_state(%struct.ath_hw* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = load i32, i32* @MCI_STATE_INIT_GPM_OFFSET, align 4
  %39 = call i64 @ar9003_mci_state(%struct.ath_hw* %37, i32 %38)
  br label %309

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %46, i8* align 16 bitcast ([4 x i32]* @__const.ath_mci_intr.payload to i8*), i64 16, i1 false)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %48 = load i32, i32* @MCI_REMOTE_RESET, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %50 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %47, i32 %48, i32 0, i32* %49, i32 16, i32 1, i32 0)
  %51 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %52 = load i32, i32* @MCI_SYS_WAKING, align 4
  %53 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %51, i32 %52, i32 0, i32* null, i32 0, i32 1, i32 0)
  %54 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load i32, i32* @MCI_STATE_RESET_REQ_WAKE, align 4
  %60 = call i64 @ar9003_mci_state(%struct.ath_hw* %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = load i32, i32* @MCI_STATE_SET_BT_AWAKE, align 4
  %63 = call i64 @ar9003_mci_state(%struct.ath_hw* %61, i32 %62)
  br label %64

64:                                               ; preds = %45, %40
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_WAKING, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %75 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MCI_BT_SLEEP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %69
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = load i32, i32* @MCI_STATE_REMOTE_SLEEP, align 4
  %82 = call i64 @ar9003_mci_state(%struct.ath_hw* %80, i32 %81)
  %83 = load i64, i64* @MCI_BT_SLEEP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %87 = load i32, i32* @MCI_STATE_SET_BT_AWAKE, align 4
  %88 = call i64 @ar9003_mci_state(%struct.ath_hw* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %79, %69
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SYS_SLEEPING, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %101 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MCI_BT_AWAKE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %95
  %106 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %107 = load i32, i32* @MCI_STATE_REMOTE_SLEEP, align 4
  %108 = call i64 @ar9003_mci_state(%struct.ath_hw* %106, i32 %107)
  %109 = load i64, i64* @MCI_BT_AWAKE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i64, i64* @MCI_BT_SLEEP, align 8
  %113 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %114 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %105, %95
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %116
  %127 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %128 = load i32, i32* @MCI_STATE_RECOVER_RX, align 4
  %129 = call i64 @ar9003_mci_state(%struct.ath_hw* %127, i32 %128)
  store i32 1, i32* %14, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_SCHD_INFO, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %141 = load i32, i32* @MCI_STATE_LAST_SCHD_MSG_OFFSET, align 4
  %142 = call i64 @ar9003_mci_state(%struct.ath_hw* %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %130
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %211

148:                                              ; preds = %143
  %149 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %207, %148
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @MCI_GPM_MORE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %210

157:                                              ; preds = %153
  %158 = load i32, i32* @ATH_OP_HW_RESET, align 4
  %159 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %160 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %159, i32 0, i32 0
  %161 = call i64 @test_bit(i32 %158, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %309

164:                                              ; preds = %157
  %165 = load %struct.ath_mci_coex*, %struct.ath_mci_coex** %3, align 8
  %166 = getelementptr inbounds %struct.ath_mci_coex, %struct.ath_mci_coex* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %12, align 8
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = call i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %169, i32* %13)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @MCI_GPM_INVALID, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %210

175:                                              ; preds = %164
  %176 = load i32, i32* %9, align 4
  %177 = ashr i32 %176, 2
  %178 = load i32*, i32** %12, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %12, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @MCI_GPM_TYPE(i32* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @MCI_GPM_OPCODE(i32* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %207

188:                                              ; preds = %175
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @MCI_GPM_IS_CAL_TYPE(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = call i32 @ath_mci_cal_msg(%struct.ath_softc* %193, i32 %194, i32* %195)
  br label %206

197:                                              ; preds = %188
  %198 = load i32, i32* %10, align 4
  switch i32 %198, label %204 [
    i32 128, label %199
  ]

199:                                              ; preds = %197
  %200 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = call i32 @ath_mci_msg(%struct.ath_softc* %200, i32 %201, i32* %202)
  br label %205

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %199
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %187
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @MCI_GPM_RECYCLE(i32* %208)
  br label %153

210:                                              ; preds = %174, %153
  br label %211

211:                                              ; preds = %210, %143
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @AR_MCI_INTERRUPT_RX_HW_MSG_MASK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %289

216:                                              ; preds = %211
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_CONTROL, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %8, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %221, %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_INFO, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_LNA_INFO, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %231, %226
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_INFO, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %268

241:                                              ; preds = %236
  %242 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %243 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @AR_MCI_CONT_RSSI_POWER, align 4
  %246 = call i32 @MS(i32 %244, i32 %245)
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_INFO, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %8, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %8, align 4
  %251 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %252 = load i32, i32* @MCI, align 4
  %253 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %254 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @AR_MCI_CONT_TXRX, align 4
  %257 = call i32 @MS(i32 %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %261 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %6, align 8
  %262 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @AR_MCI_CONT_PRIORITY, align 4
  %265 = call i32 @MS(i32 %263, i32 %264)
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @ath_dbg(%struct.ath_common* %251, i32 %252, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %260, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %241, %236
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_NACK, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_NACK, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %8, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %273, %268
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_RST, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_CONT_RST, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %8, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %283, %278
  br label %289

289:                                              ; preds = %288, %211
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294, %289
  %300 = load i32, i32* @AR_MCI_INTERRUPT_RX_INVALID_HDR, align 4
  %301 = load i32, i32* @AR_MCI_INTERRUPT_CONT_INFO_TIMEOUT, align 4
  %302 = or i32 %300, %301
  %303 = xor i32 %302, -1
  %304 = load i32, i32* %7, align 4
  %305 = and i32 %304, %303
  store i32 %305, i32* %7, align 4
  %306 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %307 = load i32, i32* @MCI_GPM_COEX_NOOP, align 4
  %308 = call i32 @ath_mci_msg(%struct.ath_softc* %306, i32 %307, i32* null)
  br label %309

309:                                              ; preds = %36, %163, %299, %294
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_get_interrupt(%struct.ath_hw*, i32*, i32*) #1

declare dso_local i64 @ar9003_mci_state(%struct.ath_hw*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw*, i32*) #1

declare dso_local i32 @MCI_GPM_TYPE(i32*) #1

declare dso_local i32 @MCI_GPM_OPCODE(i32*) #1

declare dso_local i64 @MCI_GPM_IS_CAL_TYPE(i32) #1

declare dso_local i32 @ath_mci_cal_msg(%struct.ath_softc*, i32, i32*) #1

declare dso_local i32 @ath_mci_msg(%struct.ath_softc*, i32, i32*) #1

declare dso_local i32 @MCI_GPM_RECYCLE(i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
