; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_ist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_can_ist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi3110_priv = type { i32, i32, i32, %struct.net_device*, %struct.TYPE_5__, %struct.spi_device* }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.can_frame = type { i32*, i32 }
%struct.sk_buff = type { i32 }

@HI3110_STAT_RXFMTY = common dso_local global i32 0, align 4
@HI3110_READ_STATF = common dso_local global i32 0, align 4
@HI3110_READ_INTF = common dso_local global i32 0, align 4
@HI3110_READ_ERR = common dso_local global i32 0, align 4
@HI3110_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@HI3110_ERR_PASSIVE_MASK = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@HI3110_STAT_ERRW = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@HI3110_READ_TEC = common dso_local global i32 0, align 4
@HI3110_READ_REC = common dso_local global i32 0, align 4
@HI3110_INT_BUSERR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@HI3110_ERR_PROTOCOL_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@HI3110_ERR_BITERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@HI3110_ERR_FRMERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@HI3110_ERR_STUFERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@HI3110_ERR_CRCERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@HI3110_ERR_ACKERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Bus Error\0A\00", align 1
@HI3110_STAT_TXMTY = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hi3110_can_ist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_can_ist(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hi3110_priv*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.can_frame*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.can_frame*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.hi3110_priv*
  store %struct.hi3110_priv* %21, %struct.hi3110_priv** %5, align 8
  %22 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %23 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %22, i32 0, i32 5
  %24 = load %struct.spi_device*, %struct.spi_device** %23, align 8
  store %struct.spi_device* %24, %struct.spi_device** %6, align 8
  %25 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %26 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %25, i32 0, i32 3
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %29 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  br label %31

31:                                               ; preds = %337, %2
  %32 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %33 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %338

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %47, %37
  %39 = load i32, i32* @HI3110_STAT_RXFMTY, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %41 = load i32, i32* @HI3110_READ_STATF, align 4
  %42 = call i8* @hi3110_read(%struct.spi_device* %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %49 = call i32 @hi3110_hw_rx(%struct.spi_device* %48)
  br label %38

50:                                               ; preds = %38
  %51 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %52 = load i32, i32* @HI3110_READ_INTF, align 4
  %53 = call i8* @hi3110_read(%struct.spi_device* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %56 = load i32, i32* @HI3110_READ_ERR, align 4
  %57 = call i8* @hi3110_read(%struct.spi_device* %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @HI3110_ERR_BUSOFF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %64, i32* %8, align 4
  br label %83

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @HI3110_ERR_PASSIVE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %71, i32* %8, align 4
  br label %82

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @HI3110_STAT_ERRW, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %78, i32* %8, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %86 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %84, %88
  br i1 %89, label %90, label %156

90:                                               ; preds = %83
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %91, %struct.can_frame** %12)
  store %struct.sk_buff* %92, %struct.sk_buff** %13, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  br label %338

96:                                               ; preds = %90
  %97 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %98 = load i32, i32* @HI3110_READ_TEC, align 4
  %99 = call i8* @hi3110_read(%struct.spi_device* %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %102 = load i32, i32* @HI3110_READ_REC, align 4
  %103 = call i8* @hi3110_read(%struct.spi_device* %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %107 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 6
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %112 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %96
  %119 = load i32, i32* %8, align 4
  br label %121

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  store i32 %130, i32* %14, align 4
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @can_change_state(%struct.net_device* %131, %struct.can_frame* %132, i32 %133, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %137 = call i32 @netif_rx_ni(%struct.sk_buff* %136)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %129
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = call i32 @can_bus_off(%struct.net_device* %142)
  %144 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %145 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %151 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %153 = call i32 @hi3110_hw_sleep(%struct.spi_device* %152)
  br label %338

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154, %129
  br label %156

156:                                              ; preds = %155, %83
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @HI3110_INT_BUSERR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %293

161:                                              ; preds = %156
  %162 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %163 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %293

169:                                              ; preds = %161
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @HI3110_ERR_PROTOCOL_MASK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %292

174:                                              ; preds = %169
  %175 = load %struct.net_device*, %struct.net_device** %7, align 8
  %176 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %175, %struct.can_frame** %18)
  store %struct.sk_buff* %176, %struct.sk_buff** %19, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %178 = icmp ne %struct.sk_buff* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br label %338

180:                                              ; preds = %174
  %181 = load i32, i32* @CAN_ERR_PROT, align 4
  %182 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %183 = or i32 %181, %182
  %184 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %185 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %189 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %195 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %194, i32 0, i32 3
  %196 = load %struct.net_device*, %struct.net_device** %195, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* @HI3110_ERR_BITERR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %180
  %206 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %207 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %208 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %206
  store i32 %212, i32* %210, align 4
  br label %269

213:                                              ; preds = %180
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @HI3110_ERR_FRMERR, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %220 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %221 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %219
  store i32 %225, i32* %223, align 4
  br label %268

226:                                              ; preds = %213
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @HI3110_ERR_STUFERR, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %226
  %232 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %233 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %234 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %232
  store i32 %238, i32* %236, align 4
  br label %267

239:                                              ; preds = %226
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @HI3110_ERR_CRCERR, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %246 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %247 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %245
  store i32 %251, i32* %249, align 4
  br label %266

252:                                              ; preds = %239
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* @HI3110_ERR_ACKERR, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %259 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %260 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 3
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %258
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %257, %252
  br label %266

266:                                              ; preds = %265, %244
  br label %267

267:                                              ; preds = %266, %231
  br label %268

268:                                              ; preds = %267, %218
  br label %269

269:                                              ; preds = %268, %205
  %270 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %271 = load i32, i32* @HI3110_READ_TEC, align 4
  %272 = call i8* @hi3110_read(%struct.spi_device* %270, i32 %271)
  %273 = ptrtoint i8* %272 to i32
  %274 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %275 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 6
  store i32 %273, i32* %277, align 4
  %278 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %279 = load i32, i32* @HI3110_READ_REC, align 4
  %280 = call i8* @hi3110_read(%struct.spi_device* %278, i32 %279)
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.can_frame*, %struct.can_frame** %18, align 8
  %283 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 7
  store i32 %281, i32* %285, align 4
  %286 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %287 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %286, i32 0, i32 3
  %288 = load %struct.net_device*, %struct.net_device** %287, align 8
  %289 = call i32 @netdev_dbg(%struct.net_device* %288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %290 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %291 = call i32 @netif_rx_ni(%struct.sk_buff* %290)
  br label %292

292:                                              ; preds = %269, %169
  br label %293

293:                                              ; preds = %292, %161, %156
  %294 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %295 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %333

298:                                              ; preds = %293
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @HI3110_STAT_TXMTY, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %333

303:                                              ; preds = %298
  %304 = load %struct.net_device*, %struct.net_device** %7, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 4
  %309 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %310 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %311, 1
  %313 = load %struct.net_device*, %struct.net_device** %7, align 8
  %314 = getelementptr inbounds %struct.net_device, %struct.net_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %312
  store i32 %317, i32* %315, align 4
  %318 = load %struct.net_device*, %struct.net_device** %7, align 8
  %319 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %320 = call i32 @can_led_event(%struct.net_device* %318, i32 %319)
  %321 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %322 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %303
  %326 = load %struct.net_device*, %struct.net_device** %7, align 8
  %327 = call i32 @can_get_echo_skb(%struct.net_device* %326, i32 0)
  %328 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %329 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %328, i32 0, i32 1
  store i32 0, i32* %329, align 4
  br label %330

330:                                              ; preds = %325, %303
  %331 = load %struct.net_device*, %struct.net_device** %7, align 8
  %332 = call i32 @netif_wake_queue(%struct.net_device* %331)
  br label %333

333:                                              ; preds = %330, %298, %293
  %334 = load i32, i32* %9, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %338

337:                                              ; preds = %333
  br label %31

338:                                              ; preds = %336, %179, %149, %95, %31
  %339 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %340 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %339, i32 0, i32 2
  %341 = call i32 @mutex_unlock(i32* %340)
  %342 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %342
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @hi3110_read(%struct.spi_device*, i32) #1

declare dso_local i32 @hi3110_hw_rx(%struct.spi_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @hi3110_hw_sleep(%struct.spi_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
