; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_prepare_timing_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_prepare_timing_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i64, i32, i64, i32, %struct.emc_timing }
%struct.emc_timing = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@DLL_CHANGE_NONE = common dso_local global i32 0, align 4
@DLL_CHANGE_ON = common dso_local global i32 0, align 4
@DLL_CHANGE_OFF = common dso_local global i32 0, align 4
@EMC_INTSTATUS_CLKCHANGE_COMPLETE = common dso_local global i32 0, align 4
@EMC_INTSTATUS = common dso_local global i64 0, align 8
@EMC_CFG = common dso_local global i64 0, align 8
@EMC_CFG_PWR_MASK = common dso_local global i32 0, align 4
@EMC_CFG_POWER_FEATURES_MASK = common dso_local global i32 0, align 4
@DRAM_TYPE_DDR3 = common dso_local global i64 0, align 8
@EMC_SEL_DPD_CTRL_DDR3_MASK = common dso_local global i32 0, align 4
@EMC_SEL_DPD_CTRL_MASK = common dso_local global i32 0, align 4
@EMC_SEL_DPD_CTRL = common dso_local global i64 0, align 8
@EMC_BGBIAS_CTL0 = common dso_local global i64 0, align 8
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX = common dso_local global i32 0, align 4
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD = common dso_local global i32 0, align 4
@EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN = common dso_local global i32 0, align 4
@EMC_XM2DQSPADCTRL2 = common dso_local global i64 0, align 8
@EMC_XM2DQSPADCTRL2_VREF_ENABLE = common dso_local global i32 0, align 4
@EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE = common dso_local global i32 0, align 4
@EMC_CTT_TERM_CTRL = common dso_local global i64 0, align 8
@emc_burst_regs = common dso_local global i64* null, align 8
@EMC_ZCAL_INTERVAL = common dso_local global i64 0, align 8
@EMC_AUTO_CAL_CONFIG2 = common dso_local global i64 0, align 8
@EMC_AUTO_CAL_CONFIG3 = common dso_local global i64 0, align 8
@EMC_AUTO_CAL_CONFIG_AUTO_CAL_START = common dso_local global i32 0, align 4
@EMC_AUTO_CAL_CONFIG = common dso_local global i64 0, align 8
@EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK = common dso_local global i32 0, align 4
@EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT = common dso_local global i32 0, align 4
@EMC_MRS_WAIT_CNT_LONG_WAIT_MASK = common dso_local global i32 0, align 4
@EMC_MRS_WAIT_CNT_LONG_WAIT_SHIFT = common dso_local global i32 0, align 4
@EMC_MRS_WAIT_CNT = common dso_local global i64 0, align 8
@EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR = common dso_local global i32 0, align 4
@EMC_CFG_2 = common dso_local global i64 0, align 8
@EMC_EMRS = common dso_local global i64 0, align 8
@EMC_REFCTRL = common dso_local global i64 0, align 8
@EMC_SELF_REF_CMD_ENABLED = common dso_local global i32 0, align 4
@EMC_SELF_REF = common dso_local global i64 0, align 8
@EMC_STALL_THEN_EXE_AFTER_CLKCHANGE = common dso_local global i64 0, align 8
@EMC_REFCTRL_ENABLE = common dso_local global i32 0, align 4
@EMC_EMRS2 = common dso_local global i64 0, align 8
@EMC_MODE_SET_DLL_RESET = common dso_local global i32 0, align 4
@EMC_MODE_SET_LONG_CNT = common dso_local global i32 0, align 4
@EMC_MRS = common dso_local global i64 0, align 8
@EMC_MRW2 = common dso_local global i64 0, align 8
@EMC_MRW = common dso_local global i64 0, align 8
@EMC_MRW4 = common dso_local global i64 0, align 8
@EMC_ZQ_CAL_LONG_CMD_DEV0 = common dso_local global i32 0, align 4
@EMC_ZQ_CAL = common dso_local global i64 0, align 8
@EMC_ZQ_CAL_LONG_CMD_DEV1 = common dso_local global i32 0, align 4
@EMC_CCFIFO_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_emc_prepare_timing_change(%struct.tegra_emc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_emc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.emc_timing*, align 8
  %7 = alloca %struct.emc_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.emc_timing* @tegra_emc_find_timing(%struct.tegra_emc* %16, i64 %17)
  store %struct.emc_timing* %18, %struct.emc_timing** %6, align 8
  %19 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %19, i32 0, i32 4
  store %struct.emc_timing* %20, %struct.emc_timing** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %22 = icmp ne %struct.emc_timing* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %668

26:                                               ; preds = %2
  %27 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %28 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %32 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @DLL_CHANGE_NONE, align 4
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %26
  %39 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %40 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @DLL_CHANGE_ON, align 4
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @DLL_CHANGE_OFF, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* @EMC_INTSTATUS_CLKCHANGE_COMPLETE, align 4
  %51 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EMC_INTSTATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMC_CFG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @EMC_CFG_PWR_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %49
  %68 = load i32, i32* @EMC_CFG_POWER_FEATURES_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %74 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @EMC_CFG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  store i32 5, i32* %9, align 4
  br label %79

79:                                               ; preds = %67, %49
  %80 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %81 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @EMC_SEL_DPD_CTRL_DDR3_MASK, align 4
  store i32 %86, i32* %12, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @EMC_SEL_DPD_CTRL_MASK, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @EMC_SEL_DPD_CTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl(i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @EMC_SEL_DPD_CTRL, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %100, %89
  %113 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %114 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @EMC_BGBIAS_CTL0, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %120 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %123 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_RX, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %11, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %138

138:                                              ; preds = %133, %128, %112
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @EMC_BGBIAS_CTL0_BIAS0_DSC_E_PWRD_IBIAS_VTTGEN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %138
  store i32 1, i32* %13, align 4
  br label %149

149:                                              ; preds = %148, %143
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %155 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @EMC_BGBIAS_CTL0, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load i32, i32* %9, align 4
  %161 = icmp ult i32 %160, 5
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  store i32 5, i32* %9, align 4
  br label %163

163:                                              ; preds = %162, %152
  br label %164

164:                                              ; preds = %163, %149
  store i32 0, i32* %13, align 4
  %165 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %166 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @EMC_XM2DQSPADCTRL2, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @readl(i64 %169)
  store i32 %170, i32* %10, align 4
  %171 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %172 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EMC_XM2DQSPADCTRL2_VREF_ENABLE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %164
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @EMC_XM2DQSPADCTRL2_VREF_ENABLE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @EMC_XM2DQSPADCTRL2_VREF_ENABLE, align 4
  %184 = load i32, i32* %10, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %186

186:                                              ; preds = %182, %177, %164
  %187 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %188 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @EMC_XM2DQSPADCTRL2_RX_FT_REC_ENABLE, align 4
  %200 = load i32, i32* %10, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %202

202:                                              ; preds = %198, %193, %186
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %202
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %208 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @EMC_XM2DQSPADCTRL2, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel(i32 %206, i64 %211)
  %213 = load i32, i32* %9, align 4
  %214 = icmp ult i32 %213, 30
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  store i32 30, i32* %9, align 4
  br label %216

216:                                              ; preds = %215, %205
  br label %217

217:                                              ; preds = %216, %202
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %222 = call i32 @emc_seq_update_timing(%struct.tegra_emc* %221)
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @udelay(i32 %223)
  br label %225

225:                                              ; preds = %220, %217
  %226 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %227 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %230 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %228, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %225
  %234 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %235 = call i32 @emc_seq_disable_auto_cal(%struct.tegra_emc* %234)
  %236 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %237 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %240 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @EMC_CTT_TERM_CTRL, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 %238, i64 %243)
  %245 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %246 = call i32 @emc_seq_update_timing(%struct.tegra_emc* %245)
  br label %247

247:                                              ; preds = %233, %225
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %273, %247
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %251 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @ARRAY_SIZE(i32* %252)
  %254 = icmp ult i32 %249, %253
  br i1 %254, label %255, label %276

255:                                              ; preds = %248
  %256 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %257 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %264 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64*, i64** @emc_burst_regs, align 8
  %267 = load i32, i32* %14, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %265, %270
  %272 = call i32 @writel(i32 %262, i64 %271)
  br label %273

273:                                              ; preds = %255
  %274 = load i32, i32* %14, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %248

276:                                              ; preds = %248
  %277 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %278 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %281 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @EMC_XM2DQSPADCTRL2, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel(i32 %279, i64 %284)
  %286 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %287 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %290 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @EMC_ZCAL_INTERVAL, align 8
  %293 = add nsw i64 %291, %292
  %294 = call i32 @writel(i32 %288, i64 %293)
  %295 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %296 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %299 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %298, i32 0, i32 15
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @tegra_mc_write_emem_configuration(i32 %297, i32 %300)
  %302 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %303 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @EMC_CFG_POWER_FEATURES_MASK, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %304, %306
  store i32 %307, i32* %10, align 4
  %308 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %309 = load i32, i32* %10, align 4
  %310 = load i64, i64* @EMC_CFG, align 8
  %311 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %308, i32 %309, i64 %310)
  %312 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %313 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %316 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %314, %317
  br i1 %318, label %319, label %326

319:                                              ; preds = %276
  %320 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %321 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %322 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 8
  %324 = load i64, i64* @EMC_AUTO_CAL_CONFIG2, align 8
  %325 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %320, i32 %323, i64 %324)
  br label %326

326:                                              ; preds = %319, %276
  %327 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %328 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %331 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %330, i32 0, i32 8
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %329, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %326
  %335 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %336 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %337 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 4
  %339 = load i64, i64* @EMC_AUTO_CAL_CONFIG3, align 8
  %340 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %335, i32 %338, i64 %339)
  br label %341

341:                                              ; preds = %334, %326
  %342 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %343 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %342, i32 0, i32 9
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %346 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %345, i32 0, i32 9
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %344, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %341
  %350 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %351 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* @EMC_AUTO_CAL_CONFIG_AUTO_CAL_START, align 4
  %354 = load i32, i32* %10, align 4
  %355 = and i32 %354, %353
  store i32 %355, i32* %10, align 4
  %356 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %357 = load i32, i32* %10, align 4
  %358 = load i64, i64* @EMC_AUTO_CAL_CONFIG, align 8
  %359 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %356, i32 %357, i64 %358)
  br label %360

360:                                              ; preds = %349, %341
  %361 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %362 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %421

366:                                              ; preds = %360
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* @DLL_CHANGE_ON, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %421

370:                                              ; preds = %366
  store i32 512, i32* %15, align 4
  %371 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %372 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %387

375:                                              ; preds = %370
  %376 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %377 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %375
  %381 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %382 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = mul nsw i32 %383, 256
  %385 = load i32, i32* %15, align 4
  %386 = sub nsw i32 %385, %384
  store i32 %386, i32* %15, align 4
  br label %387

387:                                              ; preds = %380, %375, %370
  %388 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %389 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %388, i32 0, i32 10
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @EMC_MRS_WAIT_CNT_SHORT_WAIT_MASK, align 4
  %392 = and i32 %390, %391
  %393 = load i32, i32* @EMC_MRS_WAIT_CNT_SHORT_WAIT_SHIFT, align 4
  %394 = ashr i32 %392, %393
  store i32 %394, i32* %10, align 4
  %395 = load i32, i32* %15, align 4
  %396 = load i32, i32* %10, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %387
  %399 = load i32, i32* %10, align 4
  store i32 %399, i32* %15, align 4
  br label %400

400:                                              ; preds = %398, %387
  %401 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %402 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %401, i32 0, i32 10
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @EMC_MRS_WAIT_CNT_LONG_WAIT_MASK, align 4
  %405 = xor i32 %404, -1
  %406 = and i32 %403, %405
  store i32 %406, i32* %10, align 4
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* @EMC_MRS_WAIT_CNT_LONG_WAIT_SHIFT, align 4
  %409 = shl i32 %407, %408
  %410 = load i32, i32* @EMC_MRS_WAIT_CNT_LONG_WAIT_MASK, align 4
  %411 = and i32 %409, %410
  %412 = load i32, i32* %10, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %10, align 4
  %414 = load i32, i32* %10, align 4
  %415 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %416 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @EMC_MRS_WAIT_CNT, align 8
  %419 = add nsw i64 %417, %418
  %420 = call i32 @writel(i32 %414, i64 %419)
  br label %421

421:                                              ; preds = %400, %366, %360
  %422 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %423 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %422, i32 0, i32 11
  %424 = load i32, i32* %423, align 8
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* @EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR, align 4
  %426 = xor i32 %425, -1
  %427 = load i32, i32* %10, align 4
  %428 = and i32 %427, %426
  store i32 %428, i32* %10, align 4
  %429 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %430 = load i32, i32* %10, align 4
  %431 = load i64, i64* @EMC_CFG_2, align 8
  %432 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %429, i32 %430, i64 %431)
  %433 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %434 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %449

438:                                              ; preds = %421
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* @DLL_CHANGE_OFF, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %449

442:                                              ; preds = %438
  %443 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %444 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %445 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i64, i64* @EMC_EMRS, align 8
  %448 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %443, i32 %446, i64 %447)
  br label %449

449:                                              ; preds = %442, %438, %421
  %450 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %451 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %452 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @EMC_REFCTRL_DEV_SEL(i32 %453)
  %455 = load i64, i64* @EMC_REFCTRL, align 8
  %456 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %450, i32 %454, i64 %455)
  %457 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %458 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %472

462:                                              ; preds = %449
  %463 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %464 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %465 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @EMC_DRAM_DEV_SEL(i32 %466)
  %468 = load i32, i32* @EMC_SELF_REF_CMD_ENABLED, align 4
  %469 = or i32 %467, %468
  %470 = load i64, i64* @EMC_SELF_REF, align 8
  %471 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %463, i32 %469, i64 %470)
  br label %472

472:                                              ; preds = %462, %449
  %473 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %474 = load i64, i64* @EMC_STALL_THEN_EXE_AFTER_CLKCHANGE, align 8
  %475 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %473, i32 1, i64 %474)
  %476 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %477 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %489

481:                                              ; preds = %472
  %482 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %483 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %484 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @EMC_DRAM_DEV_SEL(i32 %485)
  %487 = load i64, i64* @EMC_SELF_REF, align 8
  %488 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %482, i32 %486, i64 %487)
  br label %489

489:                                              ; preds = %481, %472
  %490 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %491 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %492 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = call i32 @EMC_REFCTRL_DEV_SEL(i32 %493)
  %495 = load i32, i32* @EMC_REFCTRL_ENABLE, align 4
  %496 = or i32 %494, %495
  %497 = load i64, i64* @EMC_REFCTRL, align 8
  %498 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %490, i32 %496, i64 %497)
  %499 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %500 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @DRAM_TYPE_DDR3, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %571

504:                                              ; preds = %489
  %505 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %506 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %509 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %507, %510
  br i1 %511, label %512, label %519

512:                                              ; preds = %504
  %513 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %514 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %515 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i64, i64* @EMC_EMRS, align 8
  %518 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %513, i32 %516, i64 %517)
  br label %519

519:                                              ; preds = %512, %504
  %520 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %521 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %520, i32 0, i32 12
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %524 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %523, i32 0, i32 12
  %525 = load i32, i32* %524, align 4
  %526 = icmp ne i32 %522, %525
  br i1 %526, label %527, label %534

527:                                              ; preds = %519
  %528 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %529 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %530 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %529, i32 0, i32 12
  %531 = load i32, i32* %530, align 4
  %532 = load i64, i64* @EMC_EMRS2, align 8
  %533 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %528, i32 %531, i64 %532)
  br label %534

534:                                              ; preds = %527, %519
  %535 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %536 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %535, i32 0, i32 13
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %539 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %538, i32 0, i32 13
  %540 = load i32, i32* %539, align 8
  %541 = icmp ne i32 %537, %540
  br i1 %541, label %546, label %542

542:                                              ; preds = %534
  %543 = load i32, i32* %8, align 4
  %544 = load i32, i32* @DLL_CHANGE_ON, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %570

546:                                              ; preds = %542, %534
  %547 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %548 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %547, i32 0, i32 13
  %549 = load i32, i32* %548, align 8
  store i32 %549, i32* %10, align 4
  %550 = load i32, i32* %8, align 4
  %551 = load i32, i32* @DLL_CHANGE_ON, align 4
  %552 = icmp eq i32 %550, %551
  br i1 %552, label %553, label %560

553:                                              ; preds = %546
  %554 = load i32, i32* @EMC_MODE_SET_DLL_RESET, align 4
  %555 = load i32, i32* %10, align 4
  %556 = or i32 %555, %554
  store i32 %556, i32* %10, align 4
  %557 = load i32, i32* @EMC_MODE_SET_LONG_CNT, align 4
  %558 = load i32, i32* %10, align 4
  %559 = or i32 %558, %557
  store i32 %559, i32* %10, align 4
  br label %565

560:                                              ; preds = %546
  %561 = load i32, i32* @EMC_MODE_SET_DLL_RESET, align 4
  %562 = xor i32 %561, -1
  %563 = load i32, i32* %10, align 4
  %564 = and i32 %563, %562
  store i32 %564, i32* %10, align 4
  br label %565

565:                                              ; preds = %560, %553
  %566 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %567 = load i32, i32* %10, align 4
  %568 = load i64, i64* @EMC_MRS, align 8
  %569 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %566, i32 %567, i64 %568)
  br label %570

570:                                              ; preds = %565, %542
  br label %617

571:                                              ; preds = %489
  %572 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %573 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %572, i32 0, i32 12
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %576 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %575, i32 0, i32 12
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %574, %577
  br i1 %578, label %579, label %586

579:                                              ; preds = %571
  %580 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %581 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %582 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %581, i32 0, i32 12
  %583 = load i32, i32* %582, align 4
  %584 = load i64, i64* @EMC_MRW2, align 8
  %585 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %580, i32 %583, i64 %584)
  br label %586

586:                                              ; preds = %579, %571
  %587 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %588 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %591 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp ne i32 %589, %592
  br i1 %593, label %594, label %601

594:                                              ; preds = %586
  %595 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %596 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %597 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load i64, i64* @EMC_MRW, align 8
  %600 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %595, i32 %598, i64 %599)
  br label %601

601:                                              ; preds = %594, %586
  %602 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %603 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %602, i32 0, i32 14
  %604 = load i32, i32* %603, align 4
  %605 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %606 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %605, i32 0, i32 14
  %607 = load i32, i32* %606, align 4
  %608 = icmp ne i32 %604, %607
  br i1 %608, label %609, label %616

609:                                              ; preds = %601
  %610 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %611 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %612 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %611, i32 0, i32 14
  %613 = load i32, i32* %612, align 4
  %614 = load i64, i64* @EMC_MRW4, align 8
  %615 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %610, i32 %613, i64 %614)
  br label %616

616:                                              ; preds = %609, %601
  br label %617

617:                                              ; preds = %616, %570
  %618 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %619 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %618, i32 0, i32 5
  %620 = load i32, i32* %619, align 8
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %642

622:                                              ; preds = %617
  %623 = load %struct.emc_timing*, %struct.emc_timing** %7, align 8
  %624 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %623, i32 0, i32 5
  %625 = load i32, i32* %624, align 8
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %642

627:                                              ; preds = %622
  %628 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %629 = load i32, i32* @EMC_ZQ_CAL_LONG_CMD_DEV0, align 4
  %630 = load i64, i64* @EMC_ZQ_CAL, align 8
  %631 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %628, i32 %629, i64 %630)
  %632 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %633 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 8
  %635 = icmp sgt i32 %634, 1
  br i1 %635, label %636, label %641

636:                                              ; preds = %627
  %637 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %638 = load i32, i32* @EMC_ZQ_CAL_LONG_CMD_DEV1, align 4
  %639 = load i64, i64* @EMC_ZQ_CAL, align 8
  %640 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %637, i32 %638, i64 %639)
  br label %641

641:                                              ; preds = %636, %627
  br label %642

642:                                              ; preds = %641, %622, %617
  %643 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %644 = load i64, i64* @EMC_CCFIFO_STATUS, align 8
  %645 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %643, i32 0, i64 %644)
  %646 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %647 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %646, i32 0, i32 11
  %648 = load i32, i32* %647, align 8
  %649 = load i32, i32* @EMC_CFG_2_DIS_STP_OB_CLK_DURING_NON_WR, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %659

652:                                              ; preds = %642
  %653 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %654 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %655 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %654, i32 0, i32 11
  %656 = load i32, i32* %655, align 8
  %657 = load i64, i64* @EMC_CFG_2, align 8
  %658 = call i32 @emc_ccfifo_writel(%struct.tegra_emc* %653, i32 %656, i64 %657)
  br label %659

659:                                              ; preds = %652, %642
  %660 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %661 = call i32 @emc_seq_disable_auto_cal(%struct.tegra_emc* %660)
  %662 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %663 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %662, i32 0, i32 2
  %664 = load i64, i64* %663, align 8
  %665 = load i64, i64* @EMC_INTSTATUS, align 8
  %666 = add nsw i64 %664, %665
  %667 = call i32 @readl(i64 %666)
  store i32 0, i32* %3, align 4
  br label %668

668:                                              ; preds = %659, %23
  %669 = load i32, i32* %3, align 4
  ret i32 %669
}

declare dso_local %struct.emc_timing* @tegra_emc_find_timing(%struct.tegra_emc*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @emc_seq_update_timing(%struct.tegra_emc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @emc_seq_disable_auto_cal(%struct.tegra_emc*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tegra_mc_write_emem_configuration(i32, i32) #1

declare dso_local i32 @emc_ccfifo_writel(%struct.tegra_emc*, i32, i64) #1

declare dso_local i32 @EMC_REFCTRL_DEV_SEL(i32) #1

declare dso_local i32 @EMC_DRAM_DEV_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
