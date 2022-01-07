; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ti_hecc_priv = type { i64, i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@HECC_CANGIF1 = common dso_local global i32 0, align 4
@HECC_CANGIF0 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HECC_CANES = common dso_local global i32 0, align 4
@HECC_CANES_FLAGS = common dso_local global i32 0, align 4
@HECC_CANGIM_DEF_MASK = common dso_local global i32 0, align 4
@HECC_CANREC = common dso_local global i32 0, align 4
@HECC_CANTEC = common dso_local global i32 0, align 4
@HECC_CANGIF_WLIF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error Warning interrupt\0A\00", align 1
@HECC_CANGIF_EPIF = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error passive interrupt\0A\00", align 1
@HECC_CANGIF_BOIF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Bus off interrupt\0A\00", align 1
@HECC_CANGIM = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@HECC_CANGIF_GMIF = common dso_local global i32 0, align 4
@HECC_CANTA = common dso_local global i32 0, align 4
@HECC_CANME = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@HECC_TX_MASK = common dso_local global i32 0, align 4
@HECC_CANRMP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ti_hecc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ti_hecc_priv*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.net_device*
  store %struct.net_device* %27, %struct.net_device** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %28)
  store %struct.ti_hecc_priv* %29, %struct.ti_hecc_priv** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store %struct.net_device_stats* %31, %struct.net_device_stats** %8, align 8
  store i32 0, i32* %16, align 4
  %32 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %33 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @HECC_CANGIF1, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @HECC_CANGIF0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @hecc_read(%struct.ti_hecc_priv* %32, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %378

48:                                               ; preds = %41
  %49 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %50 = load i32, i32* @HECC_CANES, align 4
  %51 = call i32 @hecc_read(%struct.ti_hecc_priv* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @HECC_CANES_FLAGS, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ti_hecc_error(%struct.net_device* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @HECC_CANGIM_DEF_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %165

68:                                               ; preds = %62
  %69 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %70 = load i32, i32* @HECC_CANREC, align 4
  %71 = call i32 @hecc_read(%struct.ti_hecc_priv* %69, i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %73 = load i32, i32* @HECC_CANTEC, align 4
  %74 = call i32 @hecc_read(%struct.ti_hecc_priv* %72, i32 %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @HECC_CANGIF_WLIF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %68
  %80 = load i32, i32* @HECC_CANGIF_WLIF, align 4
  %81 = load i32, i32* %16, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  br label %97

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  store i32 %98, i32* %18, align 4
  %99 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %100 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netdev_dbg(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @ti_hecc_change_state(%struct.net_device* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %68
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @HECC_CANGIF_EPIF, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %107
  %113 = load i32, i32* @HECC_CANGIF_EPIF, align 4
  %114 = load i32, i32* %16, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  br label %122

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  br label %130

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  store i32 %131, i32* %18, align 4
  %132 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %133 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @netdev_dbg(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @ti_hecc_change_state(%struct.net_device* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %130, %107
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @HECC_CANGIF_BOIF, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %140
  %146 = load i32, i32* @HECC_CANGIF_BOIF, align 4
  %147 = load i32, i32* %16, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %150, i32* %18, align 4
  %151 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %152 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @netdev_dbg(i32 %153, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %156 = load i32, i32* @HECC_CANGIM, align 4
  %157 = call i32 @hecc_write(%struct.ti_hecc_priv* %155, i32 %156, i32 0)
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = call i32 @can_bus_off(%struct.net_device* %158)
  %160 = load %struct.net_device*, %struct.net_device** %6, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @ti_hecc_change_state(%struct.net_device* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %145, %140
  br label %232

165:                                              ; preds = %62
  %166 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %167 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %171 = icmp ne i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %231

175:                                              ; preds = %165
  %176 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %177 = load i32, i32* @HECC_CANREC, align 4
  %178 = call i32 @hecc_read(%struct.ti_hecc_priv* %176, i32 %177)
  store i32 %178, i32* %24, align 4
  %179 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %180 = load i32, i32* @HECC_CANTEC, align 4
  %181 = call i32 @hecc_read(%struct.ti_hecc_priv* %179, i32 %180)
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %24, align 4
  %183 = icmp sge i32 %182, 128
  br i1 %183, label %187, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %25, align 4
  %186 = icmp sge i32 %185, 128
  br i1 %186, label %187, label %189

187:                                              ; preds = %184, %175
  %188 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %188, i32* %21, align 4
  br label %201

189:                                              ; preds = %184
  %190 = load i32, i32* %24, align 4
  %191 = icmp sge i32 %190, 96
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %25, align 4
  %194 = icmp sge i32 %193, 96
  br i1 %194, label %195, label %197

195:                                              ; preds = %192, %189
  %196 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %196, i32* %21, align 4
  br label %200

197:                                              ; preds = %192
  %198 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %197, %195
  br label %201

201:                                              ; preds = %200, %187
  %202 = load i32, i32* %21, align 4
  %203 = zext i32 %202 to i64
  %204 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %205 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %203, %207
  br i1 %208, label %209, label %230

209:                                              ; preds = %201
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %25, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load i32, i32* %21, align 4
  br label %216

215:                                              ; preds = %209
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i32 [ %214, %213 ], [ 0, %215 ]
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %24, align 4
  %219 = load i32, i32* %25, align 4
  %220 = icmp sle i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* %21, align 4
  br label %224

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i32 [ %222, %221 ], [ 0, %223 ]
  store i32 %225, i32* %22, align 4
  %226 = load %struct.net_device*, %struct.net_device** %6, align 8
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* %22, align 4
  %229 = call i32 @ti_hecc_change_state(%struct.net_device* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %224, %201
  br label %231

231:                                              ; preds = %230, %165
  br label %232

232:                                              ; preds = %231, %164
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @HECC_CANGIF_GMIF, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %355

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %259, %237
  %239 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %240 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %243 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %241, %244
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %301

247:                                              ; preds = %238
  %248 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %249 = call i32 @get_tx_tail_mb(%struct.ti_hecc_priv* %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @BIT(i32 %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %254 = load i32, i32* @HECC_CANTA, align 4
  %255 = call i32 @hecc_read(%struct.ti_hecc_priv* %253, i32 %254)
  %256 = and i32 %252, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %247
  br label %301

259:                                              ; preds = %247
  %260 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %261 = load i32, i32* @HECC_CANTA, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @hecc_write(%struct.ti_hecc_priv* %260, i32 %261, i32 %262)
  %264 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %265 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %264, i32 0, i32 4
  %266 = load i64, i64* %14, align 8
  %267 = call i32 @spin_lock_irqsave(i32* %265, i64 %266)
  %268 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %269 = load i32, i32* @HECC_CANME, align 4
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @hecc_clear_bit(%struct.ti_hecc_priv* %268, i32 %269, i32 %270)
  %272 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %273 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %272, i32 0, i32 4
  %274 = load i64, i64* %14, align 8
  %275 = call i32 @spin_unlock_irqrestore(i32* %273, i64 %274)
  %276 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @hecc_read_stamp(%struct.ti_hecc_priv* %276, i32 %277)
  store i32 %278, i32* %13, align 4
  %279 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %280 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %279, i32 0, i32 3
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %13, align 4
  %283 = call i64 @can_rx_offload_get_echo_skb(i32* %280, i32 %281, i32 %282)
  %284 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %285 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %283
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  %290 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %291 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load %struct.net_device*, %struct.net_device** %6, align 8
  %295 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %296 = call i32 @can_led_event(%struct.net_device* %294, i32 %295)
  %297 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %298 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, -1
  store i64 %300, i64* %298, align 8
  br label %238

301:                                              ; preds = %258, %238
  %302 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %303 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %306 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %304, %307
  br i1 %308, label %309, label %319

309:                                              ; preds = %301
  %310 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %311 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* @HECC_TX_MASK, align 4
  %314 = sext i32 %313 to i64
  %315 = and i64 %312, %314
  %316 = load i32, i32* @HECC_TX_MASK, align 4
  %317 = sext i32 %316 to i64
  %318 = icmp ne i64 %315, %317
  br i1 %318, label %339, label %319

319:                                              ; preds = %309, %301
  %320 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %321 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* @HECC_TX_MASK, align 4
  %324 = sext i32 %323 to i64
  %325 = and i64 %322, %324
  %326 = load i32, i32* @HECC_TX_MASK, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp eq i64 %325, %327
  br i1 %328, label %329, label %342

329:                                              ; preds = %319
  %330 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %331 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i32, i32* @HECC_TX_MASK, align 4
  %334 = sext i32 %333 to i64
  %335 = and i64 %332, %334
  %336 = load i32, i32* @HECC_TX_MASK, align 4
  %337 = sext i32 %336 to i64
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %329, %309
  %340 = load %struct.net_device*, %struct.net_device** %6, align 8
  %341 = call i32 @netif_wake_queue(%struct.net_device* %340)
  br label %342

342:                                              ; preds = %339, %329, %319
  br label %343

343:                                              ; preds = %349, %342
  %344 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %345 = load i32, i32* @HECC_CANRMP, align 4
  %346 = call i32 @hecc_read(%struct.ti_hecc_priv* %344, i32 %345)
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %15, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %351 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %350, i32 0, i32 3
  %352 = load i64, i64* %15, align 8
  %353 = call i32 @can_rx_offload_irq_offload_timestamp(i32* %351, i64 %352)
  br label %343

354:                                              ; preds = %343
  br label %355

355:                                              ; preds = %354, %232
  %356 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %357 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %355
  %361 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %362 = load i32, i32* @HECC_CANGIF1, align 4
  %363 = load i32, i32* %16, align 4
  %364 = call i32 @hecc_write(%struct.ti_hecc_priv* %361, i32 %362, i32 %363)
  %365 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %366 = load i32, i32* @HECC_CANGIF1, align 4
  %367 = call i32 @hecc_read(%struct.ti_hecc_priv* %365, i32 %366)
  store i32 %367, i32* %11, align 4
  br label %376

368:                                              ; preds = %355
  %369 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %370 = load i32, i32* @HECC_CANGIF0, align 4
  %371 = load i32, i32* %16, align 4
  %372 = call i32 @hecc_write(%struct.ti_hecc_priv* %369, i32 %370, i32 %371)
  %373 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %7, align 8
  %374 = load i32, i32* @HECC_CANGIF0, align 4
  %375 = call i32 @hecc_read(%struct.ti_hecc_priv* %373, i32 %374)
  store i32 %375, i32* %11, align 4
  br label %376

376:                                              ; preds = %368, %360
  %377 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %377, i32* %3, align 4
  br label %378

378:                                              ; preds = %376, %46
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hecc_read(%struct.ti_hecc_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ti_hecc_error(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @ti_hecc_change_state(%struct.net_device*, i32, i32) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @get_tx_tail_mb(%struct.ti_hecc_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hecc_clear_bit(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hecc_read_stamp(%struct.ti_hecc_priv*, i32) #1

declare dso_local i64 @can_rx_offload_get_echo_skb(i32*, i32, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_rx_offload_irq_offload_timestamp(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
