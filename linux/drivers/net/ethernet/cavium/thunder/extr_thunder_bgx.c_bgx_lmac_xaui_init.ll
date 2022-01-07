; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_xaui_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_xaui_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lmac = type { i32, i64, i64 }

@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX SPU reset not completed\0A\00", align 1
@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@SPU_CTL_LOW_POWER = common dso_local global i32 0, align 4
@BGX_MODE_RXAUI = common dso_local global i64 0, align 8
@BGX_SPUX_MISC_CONTROL = common dso_local global i32 0, align 4
@SPU_MISC_CTL_INTLV_RDISP = common dso_local global i32 0, align 4
@SPU_MISC_CTL_RX_DIS = common dso_local global i32 0, align 4
@BGX_SMUX_RX_INT = common dso_local global i32 0, align 4
@BGX_SMUX_TX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LP_CUP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LD_CUP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_LD_REP = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@SPU_PMD_CRTL_TRAIN_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_APPEND = common dso_local global i32 0, align 4
@SMU_TX_APPEND_FCS_D = common dso_local global i32 0, align 4
@BGX_SPUX_FEC_CONTROL = common dso_local global i32 0, align 4
@SPU_FEC_CTL_FEC_EN = common dso_local global i32 0, align 4
@BGX_SPUX_AN_CONTROL = common dso_local global i32 0, align 4
@SPU_AN_CTL_AN_EN = common dso_local global i32 0, align 4
@SPU_AN_CTL_XNP_EN = common dso_local global i32 0, align 4
@BGX_SPUX_AN_ADV = common dso_local global i32 0, align 4
@BGX_MODE_10G_KR = common dso_local global i64 0, align 8
@BGX_MODE_40G_KR = common dso_local global i64 0, align 8
@BGX_SPU_DBG_CONTROL = common dso_local global i32 0, align 4
@SPU_DBG_CTL_AN_ARB_LINK_CHK_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_CTL = common dso_local global i32 0, align 4
@SMU_TX_CTL_UNI_EN = common dso_local global i32 0, align 4
@SMU_TX_CTL_DIC_EN = common dso_local global i32 0, align 4
@BGX_SMUX_CBFC_CTL = common dso_local global i32 0, align 4
@BCK_EN = common dso_local global i32 0, align 4
@DRP_EN = common dso_local global i32 0, align 4
@TX_EN = common dso_local global i32 0, align 4
@RX_EN = common dso_local global i32 0, align 4
@BGX_SMUX_TX_PAUSE_PKT_TIME = common dso_local global i32 0, align 4
@DEFAULT_PAUSE_TIME = common dso_local global i32 0, align 4
@BGX_SMUX_TX_PAUSE_PKT_INTERVAL = common dso_local global i32 0, align 4
@BGX_SMUX_TX_PAUSE_ZERO = common dso_local global i32 0, align 4
@BGX_SMUX_TX_THRESH = common dso_local global i32 0, align 4
@BGX_SMUX_RX_JABBER = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, %struct.lmac*)* @bgx_lmac_xaui_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_lmac_xaui_init(%struct.bgx* %0, %struct.lmac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %4, align 8
  store %struct.lmac* %1, %struct.lmac** %5, align 8
  %8 = load %struct.lmac*, %struct.lmac** %5, align 8
  %9 = getelementptr inbounds %struct.lmac, %struct.lmac* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.bgx*, %struct.bgx** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %14 = load i32, i32* @SPU_CTL_RESET, align 4
  %15 = call i32 @bgx_reg_modify(%struct.bgx* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.bgx*, %struct.bgx** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %19 = load i32, i32* @SPU_CTL_RESET, align 4
  %20 = call i64 @bgx_poll_reg(%struct.bgx* %16, i32 %17, i32 %18, i32 %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.bgx*, %struct.bgx** %4, align 8
  %24 = getelementptr inbounds %struct.bgx, %struct.bgx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %286

28:                                               ; preds = %2
  %29 = load %struct.bgx*, %struct.bgx** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BGX_CMRX_CFG, align 4
  %32 = call i32 @bgx_reg_read(%struct.bgx* %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @CMR_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.bgx*, %struct.bgx** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BGX_CMRX_CFG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @bgx_reg_write(%struct.bgx* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.bgx*, %struct.bgx** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %45 = load i32, i32* @SPU_CTL_LOW_POWER, align 4
  %46 = call i32 @bgx_reg_modify(%struct.bgx* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.lmac*, %struct.lmac** %5, align 8
  %48 = getelementptr inbounds %struct.lmac, %struct.lmac* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BGX_MODE_RXAUI, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %28
  %53 = load %struct.bgx*, %struct.bgx** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %56 = load i32, i32* @SPU_MISC_CTL_INTLV_RDISP, align 4
  %57 = call i32 @bgx_reg_modify(%struct.bgx* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %28
  %59 = load %struct.bgx*, %struct.bgx** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %62 = call i32 @bgx_reg_read(%struct.bgx* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @SPU_MISC_CTL_RX_DIS, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.bgx*, %struct.bgx** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @bgx_reg_write(%struct.bgx* %67, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.bgx*, %struct.bgx** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BGX_SMUX_RX_INT, align 4
  %75 = call i32 @bgx_reg_read(%struct.bgx* %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.bgx*, %struct.bgx** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @BGX_SMUX_RX_INT, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bgx_reg_write(%struct.bgx* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.bgx*, %struct.bgx** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @BGX_SMUX_TX_INT, align 4
  %84 = call i32 @bgx_reg_read(%struct.bgx* %81, i32 %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.bgx*, %struct.bgx** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @BGX_SMUX_TX_INT, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @bgx_reg_write(%struct.bgx* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.bgx*, %struct.bgx** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @BGX_SPUX_INT, align 4
  %93 = call i32 @bgx_reg_read(%struct.bgx* %90, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.bgx*, %struct.bgx** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @BGX_SPUX_INT, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @bgx_reg_write(%struct.bgx* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.lmac*, %struct.lmac** %5, align 8
  %100 = getelementptr inbounds %struct.lmac, %struct.lmac* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %58
  %104 = load %struct.bgx*, %struct.bgx** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @BGX_SPUX_BR_PMD_LP_CUP, align 4
  %107 = call i32 @bgx_reg_write(%struct.bgx* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.bgx*, %struct.bgx** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @BGX_SPUX_BR_PMD_LD_CUP, align 4
  %111 = call i32 @bgx_reg_write(%struct.bgx* %108, i32 %109, i32 %110, i32 0)
  %112 = load %struct.bgx*, %struct.bgx** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @BGX_SPUX_BR_PMD_LD_REP, align 4
  %115 = call i32 @bgx_reg_write(%struct.bgx* %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.bgx*, %struct.bgx** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %119 = load i32, i32* @SPU_PMD_CRTL_TRAIN_EN, align 4
  %120 = call i32 @bgx_reg_modify(%struct.bgx* %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %103, %58
  %122 = load %struct.bgx*, %struct.bgx** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @BGX_SMUX_TX_APPEND, align 4
  %125 = load i32, i32* @SMU_TX_APPEND_FCS_D, align 4
  %126 = call i32 @bgx_reg_modify(%struct.bgx* %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.bgx*, %struct.bgx** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @BGX_SPUX_FEC_CONTROL, align 4
  %130 = call i32 @bgx_reg_read(%struct.bgx* %127, i32 %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* @SPU_FEC_CTL_FEC_EN, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %6, align 4
  %135 = load %struct.bgx*, %struct.bgx** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @BGX_SPUX_FEC_CONTROL, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @bgx_reg_write(%struct.bgx* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.bgx*, %struct.bgx** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @BGX_SPUX_AN_CONTROL, align 4
  %143 = call i32 @bgx_reg_read(%struct.bgx* %140, i32 %141, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @SPU_AN_CTL_AN_EN, align 4
  %146 = load i32, i32* @SPU_AN_CTL_XNP_EN, align 4
  %147 = or i32 %145, %146
  %148 = xor i32 %147, -1
  %149 = and i32 %144, %148
  store i32 %149, i32* %6, align 4
  %150 = load %struct.bgx*, %struct.bgx** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @BGX_SPUX_AN_CONTROL, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @bgx_reg_write(%struct.bgx* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.bgx*, %struct.bgx** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @BGX_SPUX_AN_ADV, align 4
  %158 = call i32 @bgx_reg_read(%struct.bgx* %155, i32 %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load %struct.lmac*, %struct.lmac** %5, align 8
  %160 = getelementptr inbounds %struct.lmac, %struct.lmac* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @BGX_MODE_10G_KR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %121
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, 8388608
  store i32 %166, i32* %6, align 4
  br label %180

167:                                              ; preds = %121
  %168 = load %struct.lmac*, %struct.lmac** %5, align 8
  %169 = getelementptr inbounds %struct.lmac, %struct.lmac* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @BGX_MODE_40G_KR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, 16777216
  store i32 %175, i32* %6, align 4
  br label %179

176:                                              ; preds = %167
  %177 = load i32, i32* %6, align 4
  %178 = and i32 %177, -25165825
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %164
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = and i64 %182, -37752833
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %6, align 4
  %185 = load %struct.bgx*, %struct.bgx** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @BGX_SPUX_AN_ADV, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @bgx_reg_write(%struct.bgx* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.bgx*, %struct.bgx** %4, align 8
  %191 = load i32, i32* @BGX_SPU_DBG_CONTROL, align 4
  %192 = call i32 @bgx_reg_read(%struct.bgx* %190, i32 0, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* @SPU_DBG_CTL_AN_ARB_LINK_CHK_EN, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %6, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %6, align 4
  %197 = load %struct.bgx*, %struct.bgx** %4, align 8
  %198 = load i32, i32* @BGX_SPU_DBG_CONTROL, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @bgx_reg_write(%struct.bgx* %197, i32 0, i32 %198, i32 %199)
  %201 = load %struct.bgx*, %struct.bgx** %4, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @BGX_CMRX_CFG, align 4
  %204 = load i32, i32* @CMR_EN, align 4
  %205 = call i32 @bgx_reg_modify(%struct.bgx* %201, i32 %202, i32 %203, i32 %204)
  %206 = load %struct.bgx*, %struct.bgx** %4, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %209 = call i32 @bgx_reg_read(%struct.bgx* %206, i32 %207, i32 %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* @SPU_CTL_LOW_POWER, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %6, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load %struct.bgx*, %struct.bgx** %4, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @bgx_reg_write(%struct.bgx* %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.bgx*, %struct.bgx** %4, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @BGX_SMUX_TX_CTL, align 4
  %222 = call i32 @bgx_reg_read(%struct.bgx* %219, i32 %220, i32 %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* @SMU_TX_CTL_UNI_EN, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* @SMU_TX_CTL_DIC_EN, align 4
  %228 = load i32, i32* %6, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = load %struct.bgx*, %struct.bgx** %4, align 8
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @BGX_SMUX_TX_CTL, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @bgx_reg_write(%struct.bgx* %230, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.bgx*, %struct.bgx** %4, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @BGX_SMUX_CBFC_CTL, align 4
  %238 = load i32, i32* @BCK_EN, align 4
  %239 = sext i32 %238 to i64
  %240 = or i64 281470681743360, %239
  %241 = load i32, i32* @DRP_EN, align 4
  %242 = sext i32 %241 to i64
  %243 = or i64 %240, %242
  %244 = load i32, i32* @TX_EN, align 4
  %245 = sext i32 %244 to i64
  %246 = or i64 %243, %245
  %247 = load i32, i32* @RX_EN, align 4
  %248 = sext i32 %247 to i64
  %249 = or i64 %246, %248
  %250 = trunc i64 %249 to i32
  %251 = call i32 @bgx_reg_write(%struct.bgx* %235, i32 %236, i32 %237, i32 %250)
  %252 = load %struct.bgx*, %struct.bgx** %4, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @BGX_SMUX_TX_PAUSE_PKT_TIME, align 4
  %255 = load i32, i32* @DEFAULT_PAUSE_TIME, align 4
  %256 = call i32 @bgx_reg_write(%struct.bgx* %252, i32 %253, i32 %254, i32 %255)
  %257 = load %struct.bgx*, %struct.bgx** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @BGX_SMUX_TX_PAUSE_PKT_INTERVAL, align 4
  %260 = call i32 @bgx_reg_read(%struct.bgx* %257, i32 %258, i32 %259)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = and i64 %262, -65536
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %6, align 4
  %265 = load %struct.bgx*, %struct.bgx** %4, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @BGX_SMUX_TX_PAUSE_PKT_INTERVAL, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @DEFAULT_PAUSE_TIME, align 4
  %270 = sub nsw i32 %269, 4096
  %271 = or i32 %268, %270
  %272 = call i32 @bgx_reg_write(%struct.bgx* %265, i32 %266, i32 %267, i32 %271)
  %273 = load %struct.bgx*, %struct.bgx** %4, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @BGX_SMUX_TX_PAUSE_ZERO, align 4
  %276 = call i32 @bgx_reg_write(%struct.bgx* %273, i32 %274, i32 %275, i32 1)
  %277 = load %struct.bgx*, %struct.bgx** %4, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @BGX_SMUX_TX_THRESH, align 4
  %280 = call i32 @bgx_reg_modify(%struct.bgx* %277, i32 %278, i32 %279, i32 255)
  %281 = load %struct.bgx*, %struct.bgx** %4, align 8
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* @BGX_SMUX_RX_JABBER, align 4
  %284 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %285 = call i32 @bgx_reg_modify(%struct.bgx* %281, i32 %282, i32 %283, i32 %284)
  store i32 0, i32* %3, align 4
  br label %286

286:                                              ; preds = %180, %22
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
