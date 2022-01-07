; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_can_ist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_can_ist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp251x_priv = type { i32, i32, i32, %struct.TYPE_5__, %struct.net_device*, %struct.spi_device* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@CANINTF = common dso_local global i32 0, align 4
@CANINTF_RX = common dso_local global i32 0, align 4
@CANINTF_TX = common dso_local global i32 0, align 4
@CANINTF_ERR = common dso_local global i32 0, align 4
@CANINTF_RX0IF = common dso_local global i32 0, align 4
@CANINTF_RX1IF = common dso_local global i32 0, align 4
@EFLG_RX0OVR = common dso_local global i32 0, align 4
@EFLG_RX1OVR = common dso_local global i32 0, align 4
@EFLG = common dso_local global i32 0, align 4
@EFLG_TXBO = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@EFLG_TXEP = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@EFLG_RXEP = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@EFLG_TXWAR = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@EFLG_RXWAR = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CANINTF_ERRIF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcp251x_can_ist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_can_ist(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcp251x_priv*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.mcp251x_priv*
  store %struct.mcp251x_priv* %15, %struct.mcp251x_priv** %5, align 8
  %16 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %16, i32 0, i32 5
  %18 = load %struct.spi_device*, %struct.spi_device** %17, align 8
  store %struct.spi_device* %18, %struct.spi_device** %6, align 8
  %19 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %19, i32 0, i32 4
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  br label %25

25:                                               ; preds = %337, %2
  %26 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %338

31:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %33 = load i32, i32* @CANINTF, align 4
  %34 = call i32 @mcp251x_read_2regs(%struct.spi_device* %32, i32 %33, i32* %9, i32* %10)
  %35 = load i32, i32* @CANINTF_RX, align 4
  %36 = load i32, i32* @CANINTF_TX, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CANINTF_ERR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CANINTF_RX0IF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %31
  %47 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %48 = call i32 @mcp251x_hw_rx(%struct.spi_device* %47, i32 0)
  %49 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %50 = call i64 @mcp251x_is_2510(%struct.spi_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %54 = load i32, i32* @CANINTF, align 4
  %55 = load i32, i32* @CANINTF_RX0IF, align 4
  %56 = call i32 @mcp251x_write_bits(%struct.spi_device* %53, i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %31
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CANINTF_RX1IF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %65 = call i32 @mcp251x_hw_rx(%struct.spi_device* %64, i32 1)
  %66 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %67 = call i64 @mcp251x_is_2510(%struct.spi_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @CANINTF_RX1IF, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CANINTF_ERR, align 4
  %77 = load i32, i32* @CANINTF_TX, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @CANINTF_ERR, align 4
  %84 = load i32, i32* @CANINTF_TX, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %81, %74
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %94 = load i32, i32* @CANINTF, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @mcp251x_write_bits(%struct.spi_device* %93, i32 %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @EFLG_RX0OVR, align 4
  %100 = load i32, i32* @EFLG_RX1OVR, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %106 = load i32, i32* @EFLG, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @mcp251x_write_bits(%struct.spi_device* %105, i32 %106, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %104, %97
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @EFLG_TXBO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %174

119:                                              ; preds = %109
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @EFLG_TXEP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @CAN_ERR_CRTL, align 4
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %173

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @EFLG_RXEP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @CAN_ERR_CRTL, align 4
  %140 = load i32, i32* %12, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %143 = load i32, i32* %13, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %13, align 4
  br label %172

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @EFLG_TXWAR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  store i32 128, i32* %8, align 4
  %151 = load i32, i32* @CAN_ERR_CRTL, align 4
  %152 = load i32, i32* %12, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  %155 = load i32, i32* %13, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %13, align 4
  br label %171

157:                                              ; preds = %145
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @EFLG_RXWAR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  store i32 128, i32* %8, align 4
  %163 = load i32, i32* @CAN_ERR_CRTL, align 4
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %13, align 4
  br label %170

169:                                              ; preds = %157
  store i32 129, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %162
  br label %171

171:                                              ; preds = %170, %150
  br label %172

172:                                              ; preds = %171, %137
  br label %173

173:                                              ; preds = %172, %124
  br label %174

174:                                              ; preds = %173, %114
  %175 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %176 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %210 [
    i32 129, label %179
    i32 128, label %194
  ]

179:                                              ; preds = %174
  %180 = load i32, i32* %8, align 4
  %181 = icmp uge i32 %180, 128
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %185 = icmp ule i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182
  %187 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %188 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %186, %182, %179
  br label %194

194:                                              ; preds = %174, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %197 = icmp uge i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %201 = icmp ule i32 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %204 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %202, %198, %194
  br label %211

210:                                              ; preds = %174
  br label %211

211:                                              ; preds = %210, %209
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %214 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @CANINTF_ERRIF, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %271

220:                                              ; preds = %211
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @EFLG_RX0OVR, align 4
  %223 = load i32, i32* @EFLG_RX1OVR, align 4
  %224 = or i32 %222, %223
  %225 = and i32 %221, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %266

227:                                              ; preds = %220
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @EFLG_RX0OVR, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.net_device*, %struct.net_device** %7, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  %238 = load %struct.net_device*, %struct.net_device** %7, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %232, %227
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @EFLG_RX1OVR, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %243
  %249 = load %struct.net_device*, %struct.net_device** %7, align 8
  %250 = getelementptr inbounds %struct.net_device, %struct.net_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  %254 = load %struct.net_device*, %struct.net_device** %7, align 8
  %255 = getelementptr inbounds %struct.net_device, %struct.net_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %248, %243
  %260 = load i32, i32* @CAN_ERR_CRTL, align 4
  %261 = load i32, i32* %12, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %12, align 4
  %263 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %264 = load i32, i32* %13, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %13, align 4
  br label %266

266:                                              ; preds = %259, %220
  %267 = load %struct.net_device*, %struct.net_device** %7, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %13, align 4
  %270 = call i32 @mcp251x_error_skb(%struct.net_device* %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %266, %211
  %272 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %273 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %298

278:                                              ; preds = %271
  %279 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %280 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %278
  %285 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %286 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  %287 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %288 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 8
  %293 = load %struct.net_device*, %struct.net_device** %7, align 8
  %294 = call i32 @can_bus_off(%struct.net_device* %293)
  %295 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %296 = call i32 @mcp251x_hw_sleep(%struct.spi_device* %295)
  br label %338

297:                                              ; preds = %278
  br label %298

298:                                              ; preds = %297, %271
  %299 = load i32, i32* %9, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %338

302:                                              ; preds = %298
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @CANINTF_TX, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %337

307:                                              ; preds = %302
  %308 = load %struct.net_device*, %struct.net_device** %7, align 8
  %309 = getelementptr inbounds %struct.net_device, %struct.net_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  %313 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %314 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 %315, 1
  %317 = load %struct.net_device*, %struct.net_device** %7, align 8
  %318 = getelementptr inbounds %struct.net_device, %struct.net_device* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, %316
  store i32 %321, i32* %319, align 4
  %322 = load %struct.net_device*, %struct.net_device** %7, align 8
  %323 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %324 = call i32 @can_led_event(%struct.net_device* %322, i32 %323)
  %325 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %326 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %307
  %330 = load %struct.net_device*, %struct.net_device** %7, align 8
  %331 = call i32 @can_get_echo_skb(%struct.net_device* %330, i32 0)
  %332 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %333 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %332, i32 0, i32 1
  store i32 0, i32* %333, align 4
  br label %334

334:                                              ; preds = %329, %307
  %335 = load %struct.net_device*, %struct.net_device** %7, align 8
  %336 = call i32 @netif_wake_queue(%struct.net_device* %335)
  br label %337

337:                                              ; preds = %334, %302
  br label %25

338:                                              ; preds = %301, %284, %25
  %339 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %340 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %339, i32 0, i32 2
  %341 = call i32 @mutex_unlock(i32* %340)
  %342 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %342
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcp251x_read_2regs(%struct.spi_device*, i32, i32*, i32*) #1

declare dso_local i32 @mcp251x_hw_rx(%struct.spi_device*, i32) #1

declare dso_local i64 @mcp251x_is_2510(%struct.spi_device*) #1

declare dso_local i32 @mcp251x_write_bits(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @mcp251x_error_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @mcp251x_hw_sleep(%struct.spi_device*) #1

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
