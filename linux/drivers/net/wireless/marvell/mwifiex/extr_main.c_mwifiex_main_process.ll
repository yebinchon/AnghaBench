; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_main_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_main_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_2__, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.1*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.mwifiex_adapter.1 = type opaque

@MWIFIEX_HW_STATUS_NOT_READY = common dso_local global i64 0, align 8
@HIGH_RX_PENDING = common dso_local global i64 0, align 8
@MWIFIEX_USB = common dso_local global i64 0, align 8
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@PS_STATE_PRE_SLEEP = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_STA = common dso_local global i32 0, align 4
@MWIFIEX_HW_STATUS_INIT_DONE = common dso_local global i64 0, align 8
@MWIFIEX_HW_STATUS_READY = common dso_local global i64 0, align 8
@PS_STATE_SLEEP_CFM = common dso_local global i64 0, align 8
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET = common dso_local global i32 0, align 4
@MWIFIEX_TxPD_POWER_MGMT_LAST_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_main_process(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 11
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 28
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14, %1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 11
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  store i32 0, i32* %2, align 4
  br label %581

26:                                               ; preds = %14
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 11
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %566, %33
  br label %35

35:                                               ; preds = %556, %34
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MWIFIEX_HW_STATUS_NOT_READY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %557

42:                                               ; preds = %35
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 27
  %45 = call i64 @atomic_read(i32* %44)
  %46 = load i64, i64* @HIGH_RX_PENDING, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MWIFIEX_USB, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 4
  store i32 1, i32* %56, align 8
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %58 = call i32 @mwifiex_queue_rx_work(%struct.mwifiex_adapter* %57)
  br label %557

59:                                               ; preds = %48, %42
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 26
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %65, i32 0, i32 16
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %71 = call i32 @mwifiex_process_hs_config(%struct.mwifiex_adapter* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 23
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.mwifiex_adapter.1*)*, i32 (%struct.mwifiex_adapter.1*)** %75, align 8
  %77 = icmp ne i32 (%struct.mwifiex_adapter.1*)* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 23
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (%struct.mwifiex_adapter.1*)*, i32 (%struct.mwifiex_adapter.1*)** %81, align 8
  %83 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %84 = bitcast %struct.mwifiex_adapter* %83 to %struct.mwifiex_adapter.1*
  %85 = call i32 %82(%struct.mwifiex_adapter.1* %84)
  br label %86

86:                                               ; preds = %78, %72
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %88, i32 0, i32 25
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %99 = call i32 @mwifiex_queue_rx_work(%struct.mwifiex_adapter* %98)
  br label %100

100:                                              ; preds = %97, %92, %87
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PS_STATE_SLEEP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %100
  %107 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %107, i32 0, i32 24
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %106
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %151, label %116

116:                                              ; preds = %111
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %118 = call i64 @is_command_pending(%struct.mwifiex_adapter* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %116
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %121, i32 0, i32 12
  %123 = call i64 @skb_queue_empty(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %127 = call i64 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %131 = call i64 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %129, %125, %120, %116
  %134 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %134, i32 0, i32 7
  store i32 1, i32* %135, align 8
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %136, i32 0, i32 22
  %138 = load i64, i64* @jiffies, align 8
  %139 = load i32, i32* @HZ, align 4
  %140 = mul nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %138, %141
  %143 = call i32 @mod_timer(i32* %137, i64 %142)
  %144 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %144, i32 0, i32 23
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %146, align 8
  %148 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %149 = bitcast %struct.mwifiex_adapter* %148 to %struct.mwifiex_adapter.0*
  %150 = call i32 %147(%struct.mwifiex_adapter.0* %149)
  br label %556

151:                                              ; preds = %129, %111, %106, %100
  %152 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %153 = call i64 @IS_CARD_RX_RCVD(%struct.mwifiex_adapter* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %156, i32 0, i32 5
  store i32 0, i32* %157, align 4
  %158 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %158, i32 0, i32 7
  store i32 0, i32* %159, align 8
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %160, i32 0, i32 22
  %162 = call i32 @del_timer(i32* %161)
  %163 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PS_STATE_SLEEP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %155
  %169 = load i64, i64* @PS_STATE_AWAKE, align 8
  %170 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %171 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %170, i32 0, i32 6
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %155
  br label %272

173:                                              ; preds = %151
  %174 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %557

179:                                              ; preds = %173
  %180 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %187 = call i32 @mwifiex_check_ps_cond(%struct.mwifiex_adapter* %186)
  br label %188

188:                                              ; preds = %185, %179
  %189 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @PS_STATE_AWAKE, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %557

195:                                              ; preds = %188
  %196 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %197 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %196, i32 0, i32 21
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %195
  %201 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %202 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @MWIFIEX_USB, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %208 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %207, i32 0, i32 20
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %206
  br label %557

212:                                              ; preds = %206
  br label %214

213:                                              ; preds = %200
  br label %557

214:                                              ; preds = %212
  br label %215

215:                                              ; preds = %214, %195
  %216 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %216, i32 0, i32 19
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %222 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %221, i32 0, i32 18
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %249, label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %227 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %226, i32 0, i32 17
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %249, label %230

230:                                              ; preds = %225
  %231 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %232 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %233 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %231, i32 %232)
  %234 = call i64 @mwifiex_is_tdls_chan_switching(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %230
  %237 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %238 = call i64 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %271

240:                                              ; preds = %236
  %241 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %242 = call i64 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %271

244:                                              ; preds = %240
  %245 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %246 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %245, i32 0, i32 12
  %247 = call i64 @skb_queue_empty(i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %244, %230, %225, %220
  %250 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %251 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %250, i32 0, i32 14
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %256 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %255, i32 0, i32 13
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %269, label %259

259:                                              ; preds = %254
  %260 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %261 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %262 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %260, i32 %261)
  %263 = call i64 @mwifiex_is_send_cmd_allowed(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %267 = call i64 @is_command_pending(%struct.mwifiex_adapter* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %265, %259, %254, %249
  br label %557

270:                                              ; preds = %265
  br label %271

271:                                              ; preds = %270, %244, %240, %236
  br label %272

272:                                              ; preds = %271, %172
  %273 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %274 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %279 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %278, i32 0, i32 8
  store i32 0, i32* %279, align 4
  %280 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %281 = call i32 @mwifiex_process_event(%struct.mwifiex_adapter* %280)
  br label %282

282:                                              ; preds = %277, %272
  %283 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %284 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %283, i32 0, i32 9
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %304

287:                                              ; preds = %282
  %288 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %289 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %288, i32 0, i32 9
  store i32 0, i32* %289, align 8
  %290 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %291 = call i32 @mwifiex_process_cmdresp(%struct.mwifiex_adapter* %290)
  %292 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %293 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @MWIFIEX_HW_STATUS_INIT_DONE, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %287
  %298 = load i64, i64* @MWIFIEX_HW_STATUS_READY, align 8
  %299 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %300 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %299, i32 0, i32 2
  store i64 %298, i64* %300, align 8
  %301 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %302 = call i32 @mwifiex_init_fw_complete(%struct.mwifiex_adapter* %301)
  br label %303

303:                                              ; preds = %297, %287
  br label %304

304:                                              ; preds = %303, %282
  %305 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %306 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %312 = call i32 @mwifiex_check_ps_cond(%struct.mwifiex_adapter* %311)
  br label %313

313:                                              ; preds = %310, %304
  %314 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %315 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %314, i32 0, i32 6
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @PS_STATE_SLEEP, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %331, label %319

319:                                              ; preds = %313
  %320 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %321 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %320, i32 0, i32 6
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %331, label %325

325:                                              ; preds = %319
  %326 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %327 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @PS_STATE_SLEEP_CFM, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %325, %319, %313
  br label %556

332:                                              ; preds = %325
  %333 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %334 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %333, i32 0, i32 21
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %332
  %338 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %339 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @MWIFIEX_USB, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %350

343:                                              ; preds = %337
  %344 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %345 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %344, i32 0, i32 20
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343
  br label %556

349:                                              ; preds = %343
  br label %351

350:                                              ; preds = %337
  br label %556

351:                                              ; preds = %349
  br label %352

352:                                              ; preds = %351, %332
  %353 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %354 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %353, i32 0, i32 14
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %374, label %357

357:                                              ; preds = %352
  %358 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %359 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %358, i32 0, i32 13
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %374, label %362

362:                                              ; preds = %357
  %363 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %364 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %365 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %363, i32 %364)
  %366 = call i64 @mwifiex_is_send_cmd_allowed(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %362
  %369 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %370 = call i32 @mwifiex_exec_next_cmd(%struct.mwifiex_adapter* %369)
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %372, label %373

372:                                              ; preds = %368
  store i32 -1, i32* %4, align 4
  br label %557

373:                                              ; preds = %368
  br label %374

374:                                              ; preds = %373, %362, %357, %352
  %375 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %376 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @MWIFIEX_USB, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %386

380:                                              ; preds = %374
  %381 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %382 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %381, i32 0, i32 20
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  br label %556

386:                                              ; preds = %380, %374
  %387 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %388 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %387, i32 0, i32 19
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %386
  %392 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %393 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %392, i32 0, i32 18
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %423, label %396

396:                                              ; preds = %391, %386
  %397 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %398 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %397, i32 0, i32 17
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %423, label %401

401:                                              ; preds = %396
  %402 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %403 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %402, i32 0, i32 12
  %404 = call i64 @skb_queue_empty(i32* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %423, label %406

406:                                              ; preds = %401
  %407 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %408 = call i32 @mwifiex_process_tx_queue(%struct.mwifiex_adapter* %407)
  %409 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %410 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %409, i32 0, i32 16
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %422

413:                                              ; preds = %406
  %414 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %415 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %416 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %415, i32 0, i32 15
  %417 = call i32 @clear_bit(i32 %414, i32* %416)
  %418 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %419 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %420 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %418, i32 %419)
  %421 = call i32 @mwifiex_hs_activated_event(i32 %420, i32 0)
  br label %422

422:                                              ; preds = %413, %406
  br label %423

423:                                              ; preds = %422, %401, %396, %391
  %424 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %425 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %424, i32 0, i32 19
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %433, label %428

428:                                              ; preds = %423
  %429 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %430 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %429, i32 0, i32 18
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %465, label %433

433:                                              ; preds = %428, %423
  %434 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %435 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %434, i32 0, i32 17
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %465, label %438

438:                                              ; preds = %433
  %439 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %440 = call i64 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %465, label %442

442:                                              ; preds = %438
  %443 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %444 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %445 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %443, i32 %444)
  %446 = call i64 @mwifiex_is_tdls_chan_switching(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %465, label %448

448:                                              ; preds = %442
  %449 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %450 = call i32 @mwifiex_process_bypass_tx(%struct.mwifiex_adapter* %449)
  %451 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %452 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %451, i32 0, i32 16
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %448
  %456 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %457 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %458 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %457, i32 0, i32 15
  %459 = call i32 @clear_bit(i32 %456, i32* %458)
  %460 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %461 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %462 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %460, i32 %461)
  %463 = call i32 @mwifiex_hs_activated_event(i32 %462, i32 0)
  br label %464

464:                                              ; preds = %455, %448
  br label %465

465:                                              ; preds = %464, %442, %438, %433, %428
  %466 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %467 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %466, i32 0, i32 19
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %475, label %470

470:                                              ; preds = %465
  %471 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %472 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %471, i32 0, i32 18
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %507, label %475

475:                                              ; preds = %470, %465
  %476 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %477 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %476, i32 0, i32 17
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %507, label %480

480:                                              ; preds = %475
  %481 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %482 = call i64 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %507, label %484

484:                                              ; preds = %480
  %485 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %486 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %487 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %485, i32 %486)
  %488 = call i64 @mwifiex_is_tdls_chan_switching(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %507, label %490

490:                                              ; preds = %484
  %491 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %492 = call i32 @mwifiex_wmm_process_tx(%struct.mwifiex_adapter* %491)
  %493 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %494 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %493, i32 0, i32 16
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %506

497:                                              ; preds = %490
  %498 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %499 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %500 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %499, i32 0, i32 15
  %501 = call i32 @clear_bit(i32 %498, i32* %500)
  %502 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %503 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %504 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %502, i32 %503)
  %505 = call i32 @mwifiex_hs_activated_event(i32 %504, i32 0)
  br label %506

506:                                              ; preds = %497, %490
  br label %507

507:                                              ; preds = %506, %484, %480, %475, %470
  %508 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %509 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %508, i32 0, i32 10
  %510 = load i32, i32* %509, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %555

512:                                              ; preds = %507
  %513 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %514 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %513, i32 0, i32 14
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %555, label %517

517:                                              ; preds = %512
  %518 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %519 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %518, i32 0, i32 13
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %555, label %522

522:                                              ; preds = %517
  %523 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %524 = call i64 @is_command_pending(%struct.mwifiex_adapter* %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %555, label %526

526:                                              ; preds = %522
  %527 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %528 = call i64 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %555

530:                                              ; preds = %526
  %531 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %532 = call i64 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter* %531)
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %555

534:                                              ; preds = %530
  %535 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %536 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %535, i32 0, i32 12
  %537 = call i64 @skb_queue_empty(i32* %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %555

539:                                              ; preds = %534
  %540 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %541 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %542 = call i32 @mwifiex_get_priv(%struct.mwifiex_adapter* %540, i32 %541)
  %543 = load i32, i32* @MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET, align 4
  %544 = load i32, i32* @MWIFIEX_TxPD_POWER_MGMT_LAST_PACKET, align 4
  %545 = or i32 %543, %544
  %546 = call i32 @mwifiex_send_null_packet(i32 %542, i32 %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %539
  %549 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %550 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %549, i32 0, i32 10
  store i32 0, i32* %550, align 4
  %551 = load i64, i64* @PS_STATE_SLEEP, align 8
  %552 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %553 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %552, i32 0, i32 6
  store i64 %551, i64* %553, align 8
  br label %554

554:                                              ; preds = %548, %539
  br label %557

555:                                              ; preds = %534, %530, %526, %522, %517, %512, %507
  br label %556

556:                                              ; preds = %555, %385, %350, %348, %331, %133
  br i1 true, label %35, label %557

557:                                              ; preds = %556, %554, %372, %269, %213, %211, %194, %178, %54, %41
  %558 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %559 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %558, i32 0, i32 11
  %560 = load i64, i64* %5, align 8
  %561 = call i32 @spin_lock_irqsave(i32* %559, i64 %560)
  %562 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %563 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %573

566:                                              ; preds = %557
  %567 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %568 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %567, i32 0, i32 1
  store i32 0, i32* %568, align 4
  %569 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %570 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %569, i32 0, i32 11
  %571 = load i64, i64* %5, align 8
  %572 = call i32 @spin_unlock_irqrestore(i32* %570, i64 %571)
  br label %34

573:                                              ; preds = %557
  %574 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %575 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %574, i32 0, i32 0
  store i32 0, i32* %575, align 8
  %576 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %577 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %576, i32 0, i32 11
  %578 = load i64, i64* %5, align 8
  %579 = call i32 @spin_unlock_irqrestore(i32* %577, i64 %578)
  %580 = load i32, i32* %4, align 4
  store i32 %580, i32* %2, align 4
  br label %581

581:                                              ; preds = %573, %19
  %582 = load i32, i32* %2, align 4
  ret i32 %582
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_queue_rx_work(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_process_hs_config(%struct.mwifiex_adapter*) #1

declare dso_local i64 @is_command_pending(%struct.mwifiex_adapter*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i64 @mwifiex_bypass_txlist_empty(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_wmm_lists_empty(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @IS_CARD_RX_RCVD(%struct.mwifiex_adapter*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mwifiex_check_ps_cond(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_is_tdls_chan_switching(i32) #1

declare dso_local i32 @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i64 @mwifiex_is_send_cmd_allowed(i32) #1

declare dso_local i32 @mwifiex_process_event(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_process_cmdresp(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_init_fw_complete(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_exec_next_cmd(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_process_tx_queue(%struct.mwifiex_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_hs_activated_event(i32, i32) #1

declare dso_local i32 @mwifiex_process_bypass_tx(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_wmm_process_tx(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_send_null_packet(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
