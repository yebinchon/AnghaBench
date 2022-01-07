; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_sgmii_change_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_sgmii_change_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i64, i32, %struct.bgx* }
%struct.bgx = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_PKT_TX_EN = common dso_local global i32 0, align 4
@CMR_PKT_RX_EN = common dso_local global i32 0, align 4
@BGX_GMP_GMI_PRTX_CFG = common dso_local global i32 0, align 4
@GMI_PORT_CFG_RX_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BGX%d LMAC%d GMI RX not idle\0A\00", align 1
@GMI_PORT_CFG_TX_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"BGX%d LMAC%d GMI TX not idle\0A\00", align 1
@BGX_GMP_PCS_MISCX_CTL = common dso_local global i32 0, align 4
@PCS_MISC_CTL_GMX_ENO = common dso_local global i32 0, align 4
@GMI_PORT_CFG_DUPLEX = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SPEED = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SPEED_MSB = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SLOT_TIME = common dso_local global i32 0, align 4
@PCS_MISC_CTL_SAMP_PT_MASK = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_SLOT = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmac*)* @bgx_sgmii_change_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_sgmii_change_link_state(%struct.lmac* %0) #0 {
  %2 = alloca %struct.lmac*, align 8
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lmac* %0, %struct.lmac** %2, align 8
  %9 = load %struct.lmac*, %struct.lmac** %2, align 8
  %10 = getelementptr inbounds %struct.lmac, %struct.lmac* %9, i32 0, i32 4
  %11 = load %struct.bgx*, %struct.bgx** %10, align 8
  store %struct.bgx* %11, %struct.bgx** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.bgx*, %struct.bgx** %3, align 8
  %13 = load %struct.lmac*, %struct.lmac** %2, align 8
  %14 = getelementptr inbounds %struct.lmac, %struct.lmac* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BGX_CMRX_CFG, align 4
  %17 = call i32 @bgx_reg_read(%struct.bgx* %12, i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %25 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.bgx*, %struct.bgx** %3, align 8
  %31 = load %struct.lmac*, %struct.lmac** %2, align 8
  %32 = getelementptr inbounds %struct.lmac, %struct.lmac* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BGX_CMRX_CFG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bgx_reg_write(%struct.bgx* %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.bgx*, %struct.bgx** %3, align 8
  %38 = load %struct.lmac*, %struct.lmac** %2, align 8
  %39 = getelementptr inbounds %struct.lmac, %struct.lmac* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %42 = load i32, i32* @GMI_PORT_CFG_RX_IDLE, align 4
  %43 = call i64 @bgx_poll_reg(%struct.bgx* %37, i32 %40, i32 %41, i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %1
  %46 = load %struct.bgx*, %struct.bgx** %3, align 8
  %47 = getelementptr inbounds %struct.bgx, %struct.bgx* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.bgx*, %struct.bgx** %3, align 8
  %51 = getelementptr inbounds %struct.bgx, %struct.bgx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.lmac*, %struct.lmac** %2, align 8
  %54 = getelementptr inbounds %struct.lmac, %struct.lmac* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  br label %280

57:                                               ; preds = %1
  %58 = load %struct.bgx*, %struct.bgx** %3, align 8
  %59 = load %struct.lmac*, %struct.lmac** %2, align 8
  %60 = getelementptr inbounds %struct.lmac, %struct.lmac* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %63 = load i32, i32* @GMI_PORT_CFG_TX_IDLE, align 4
  %64 = call i64 @bgx_poll_reg(%struct.bgx* %58, i32 %61, i32 %62, i32 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.bgx*, %struct.bgx** %3, align 8
  %68 = getelementptr inbounds %struct.bgx, %struct.bgx* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.bgx*, %struct.bgx** %3, align 8
  %72 = getelementptr inbounds %struct.bgx, %struct.bgx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lmac*, %struct.lmac** %2, align 8
  %75 = getelementptr inbounds %struct.lmac, %struct.lmac* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  br label %280

78:                                               ; preds = %57
  %79 = load %struct.bgx*, %struct.bgx** %3, align 8
  %80 = load %struct.lmac*, %struct.lmac** %2, align 8
  %81 = getelementptr inbounds %struct.lmac, %struct.lmac* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %84 = call i32 @bgx_reg_read(%struct.bgx* %79, i32 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.bgx*, %struct.bgx** %3, align 8
  %86 = load %struct.lmac*, %struct.lmac** %2, align 8
  %87 = getelementptr inbounds %struct.lmac, %struct.lmac* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %90 = call i32 @bgx_reg_read(%struct.bgx* %85, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.lmac*, %struct.lmac** %2, align 8
  %92 = getelementptr inbounds %struct.lmac, %struct.lmac* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %78
  %96 = load i32, i32* @PCS_MISC_CTL_GMX_ENO, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @GMI_PORT_CFG_DUPLEX, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.lmac*, %struct.lmac** %2, align 8
  %105 = getelementptr inbounds %struct.lmac, %struct.lmac* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 2
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %114

110:                                              ; preds = %78
  %111 = load i32, i32* @PCS_MISC_CTL_GMX_ENO, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %95
  %115 = load %struct.lmac*, %struct.lmac** %2, align 8
  %116 = getelementptr inbounds %struct.lmac, %struct.lmac* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %221 [
    i32 10, label %118
    i32 100, label %148
    i32 1000, label %179
  ]

118:                                              ; preds = %114
  %119 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, 50
  store i32 %135, i32* %6, align 4
  %136 = load %struct.bgx*, %struct.bgx** %3, align 8
  %137 = load %struct.lmac*, %struct.lmac** %2, align 8
  %138 = getelementptr inbounds %struct.lmac, %struct.lmac* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %141 = call i32 @bgx_reg_write(%struct.bgx* %136, i32 %139, i32 %140, i32 64)
  %142 = load %struct.bgx*, %struct.bgx** %3, align 8
  %143 = load %struct.lmac*, %struct.lmac** %2, align 8
  %144 = getelementptr inbounds %struct.lmac, %struct.lmac* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %147 = call i32 @bgx_reg_write(%struct.bgx* %142, i32 %145, i32 %146, i32 0)
  br label %222

148:                                              ; preds = %114
  %149 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %5, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, 5
  store i32 %166, i32* %6, align 4
  %167 = load %struct.bgx*, %struct.bgx** %3, align 8
  %168 = load %struct.lmac*, %struct.lmac** %2, align 8
  %169 = getelementptr inbounds %struct.lmac, %struct.lmac* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %172 = call i32 @bgx_reg_write(%struct.bgx* %167, i32 %170, i32 %171, i32 64)
  %173 = load %struct.bgx*, %struct.bgx** %3, align 8
  %174 = load %struct.lmac*, %struct.lmac** %2, align 8
  %175 = getelementptr inbounds %struct.lmac, %struct.lmac* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %178 = call i32 @bgx_reg_write(%struct.bgx* %173, i32 %176, i32 %177, i32 0)
  br label %222

179:                                              ; preds = %114
  %180 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %188 = load i32, i32* %5, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %6, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, 1
  store i32 %195, i32* %6, align 4
  %196 = load %struct.bgx*, %struct.bgx** %3, align 8
  %197 = load %struct.lmac*, %struct.lmac** %2, align 8
  %198 = getelementptr inbounds %struct.lmac, %struct.lmac* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %201 = call i32 @bgx_reg_write(%struct.bgx* %196, i32 %199, i32 %200, i32 512)
  %202 = load %struct.lmac*, %struct.lmac** %2, align 8
  %203 = getelementptr inbounds %struct.lmac, %struct.lmac* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %179
  %207 = load %struct.bgx*, %struct.bgx** %3, align 8
  %208 = load %struct.lmac*, %struct.lmac** %2, align 8
  %209 = getelementptr inbounds %struct.lmac, %struct.lmac* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %212 = call i32 @bgx_reg_write(%struct.bgx* %207, i32 %210, i32 %211, i32 0)
  br label %220

213:                                              ; preds = %179
  %214 = load %struct.bgx*, %struct.bgx** %3, align 8
  %215 = load %struct.lmac*, %struct.lmac** %2, align 8
  %216 = getelementptr inbounds %struct.lmac, %struct.lmac* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %219 = call i32 @bgx_reg_write(%struct.bgx* %214, i32 %217, i32 %218, i32 8192)
  br label %220

220:                                              ; preds = %213, %206
  br label %222

221:                                              ; preds = %114
  br label %222

222:                                              ; preds = %221, %220, %148, %118
  %223 = load %struct.bgx*, %struct.bgx** %3, align 8
  %224 = load %struct.lmac*, %struct.lmac** %2, align 8
  %225 = getelementptr inbounds %struct.lmac, %struct.lmac* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @bgx_reg_write(%struct.bgx* %223, i32 %226, i32 %227, i32 %228)
  %230 = load %struct.bgx*, %struct.bgx** %3, align 8
  %231 = load %struct.lmac*, %struct.lmac** %2, align 8
  %232 = getelementptr inbounds %struct.lmac, %struct.lmac* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @bgx_reg_write(%struct.bgx* %230, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %8, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %222
  %240 = load i32, i32* @CMR_PKT_RX_EN, align 4
  br label %242

241:                                              ; preds = %222
  br label %242

242:                                              ; preds = %241, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %241 ]
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* @CMR_PKT_TX_EN, align 4
  br label %249

248:                                              ; preds = %242
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i32 [ %247, %246 ], [ 0, %248 ]
  %251 = or i32 %243, %250
  %252 = load i32, i32* %4, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %4, align 4
  %254 = load %struct.bgx*, %struct.bgx** %3, align 8
  %255 = load %struct.lmac*, %struct.lmac** %2, align 8
  %256 = getelementptr inbounds %struct.lmac, %struct.lmac* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @BGX_CMRX_CFG, align 4
  %259 = load i32, i32* %4, align 4
  %260 = call i32 @bgx_reg_write(%struct.bgx* %254, i32 %257, i32 %258, i32 %259)
  %261 = load %struct.bgx*, %struct.bgx** %3, align 8
  %262 = getelementptr inbounds %struct.bgx, %struct.bgx* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %249
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @CMR_PKT_RX_EN, align 4
  %268 = load i32, i32* @CMR_PKT_TX_EN, align 4
  %269 = or i32 %267, %268
  %270 = and i32 %266, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %265
  %273 = load %struct.lmac*, %struct.lmac** %2, align 8
  %274 = getelementptr inbounds %struct.lmac, %struct.lmac* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.lmac*, %struct.lmac** %2, align 8
  %277 = getelementptr inbounds %struct.lmac, %struct.lmac* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @xcv_setup_link(i64 %275, i32 %278)
  br label %280

280:                                              ; preds = %45, %66, %272, %265, %249
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @xcv_setup_link(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
