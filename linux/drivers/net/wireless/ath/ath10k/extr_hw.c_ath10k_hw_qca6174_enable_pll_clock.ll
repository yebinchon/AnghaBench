; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_qca6174_enable_pll_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_qca6174_enable_pll_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__*, %struct.ath10k_hw_params }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ath10k_hw_params = type { i32, %struct.ath10k_hw_clk_params* }
%struct.ath10k_hw_clk_params = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_SOC_BASE_ADDRESS = common dso_local global i32 0, align 4
@EFUSE_OFFSET = common dso_local global i32 0, align 4
@EFUSE_XTAL_SEL = common dso_local global i32 0, align 4
@ATH10K_HW_REFCLK_COUNT = common dso_local global i32 0, align 4
@BB_PLL_CONFIG_OFFSET = common dso_local global i32 0, align 4
@BB_PLL_CONFIG_FRAC_MASK = common dso_local global i32 0, align 4
@BB_PLL_CONFIG_OUTDIV_MASK = common dso_local global i32 0, align 4
@BB_PLL_CONFIG_FRAC = common dso_local global i32 0, align 4
@BB_PLL_CONFIG_OUTDIV = common dso_local global i32 0, align 4
@RTC_WMAC_BASE_ADDRESS = common dso_local global i32 0, align 4
@WLAN_PLL_SETTLE_OFFSET = common dso_local global i32 0, align 4
@WLAN_PLL_SETTLE_TIME_MASK = common dso_local global i32 0, align 4
@WLAN_PLL_SETTLE_TIME = common dso_local global i32 0, align 4
@SOC_CORE_CLK_CTRL_OFFSET = common dso_local global i32 0, align 4
@SOC_CORE_CLK_CTRL_DIV_MASK = common dso_local global i32 0, align 4
@SOC_CORE_CLK_CTRL_DIV = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_OFFSET = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_REFDIV = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_DIV = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_NOPWD = common dso_local global i32 0, align 4
@RTC_SYNC_STATUS_OFFSET = common dso_local global i32 0, align 4
@RTC_SYNC_STATUS_PLL_CHANGING = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_BYPASS_MASK = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_BYPASS = common dso_local global i32 0, align 4
@SOC_CPU_CLOCK_OFFSET = common dso_local global i32 0, align 4
@SOC_CPU_CLOCK_STANDARD_MASK = common dso_local global i32 0, align 4
@SOC_CPU_CLOCK_STANDARD = common dso_local global i32 0, align 4
@WLAN_PLL_CONTROL_NOPWD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_hw_qca6174_enable_pll_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_hw_qca6174_enable_pll_clock(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath10k_hw_params*, align 8
  %13 = alloca %struct.ath10k_hw_clk_params*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  store %struct.ath10k_hw_params* %15, %struct.ath10k_hw_params** %12, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %1
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %22, %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %412

39:                                               ; preds = %29
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @RTC_SOC_BASE_ADDRESS, align 4
  %59 = load i32, i32* @EFUSE_OFFSET, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %61, i32 %62, i32* %10)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %39
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %412

69:                                               ; preds = %39
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @EFUSE_XTAL_SEL, align 4
  %72 = call i32 @MS(i32 %70, i32 %71)
  %73 = load i32, i32* @ATH10K_HW_REFCLK_COUNT, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %412

78:                                               ; preds = %69
  %79 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %12, align 8
  %80 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %79, i32 0, i32 1
  %81 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @EFUSE_XTAL_SEL, align 4
  %84 = call i32 @MS(i32 %82, i32 %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %81, i64 %85
  store %struct.ath10k_hw_clk_params* %86, %struct.ath10k_hw_clk_params** %13, align 8
  %87 = load i32, i32* @RTC_SOC_BASE_ADDRESS, align 4
  %88 = load i32, i32* @BB_PLL_CONFIG_OFFSET, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %90, i32 %91, i32* %10)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %412

98:                                               ; preds = %78
  %99 = load i32, i32* @BB_PLL_CONFIG_FRAC_MASK, align 4
  %100 = load i32, i32* @BB_PLL_CONFIG_OUTDIV_MASK, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %13, align 8
  %106 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BB_PLL_CONFIG_FRAC, align 4
  %109 = call i32 @SM(i32 %107, i32 %108)
  %110 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %13, align 8
  %111 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BB_PLL_CONFIG_OUTDIV, align 4
  %114 = call i32 @SM(i32 %112, i32 %113)
  %115 = or i32 %109, %114
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %118, i32 %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %98
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %412

127:                                              ; preds = %98
  %128 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %129 = load i32, i32* @WLAN_PLL_SETTLE_OFFSET, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %9, align 4
  %131 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %131, i32 %132, i32* %10)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %412

139:                                              ; preds = %127
  %140 = load i32, i32* @WLAN_PLL_SETTLE_TIME_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %13, align 8
  %145 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @WLAN_PLL_SETTLE_TIME, align 4
  %148 = call i32 @SM(i32 %146, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  %151 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %151, i32 %152, i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %139
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %412

160:                                              ; preds = %139
  %161 = load i32, i32* @RTC_SOC_BASE_ADDRESS, align 4
  %162 = load i32, i32* @SOC_CORE_CLK_CTRL_OFFSET, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %9, align 4
  %164 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %164, i32 %165, i32* %10)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %412

172:                                              ; preds = %160
  %173 = load i32, i32* @SOC_CORE_CLK_CTRL_DIV_MASK, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* @SOC_CORE_CLK_CTRL_DIV, align 4
  %178 = call i32 @SM(i32 1, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %181, i32 %182, i32 %183)
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %412

190:                                              ; preds = %172
  store i32 1, i32* %11, align 4
  %191 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @ath10k_bmi_write_memory(%struct.ath10k* %191, i32 %192, i32* %11, i32 4)
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %412

199:                                              ; preds = %190
  %200 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %201 = load i32, i32* @WLAN_PLL_CONTROL_OFFSET, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %9, align 4
  %203 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %203, i32 %204, i32* %10)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %412

211:                                              ; preds = %199
  %212 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %13, align 8
  %213 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @WLAN_PLL_CONTROL_REFDIV, align 4
  %216 = call i32 @SM(i32 %214, i32 %215)
  %217 = load %struct.ath10k_hw_clk_params*, %struct.ath10k_hw_clk_params** %13, align 8
  %218 = getelementptr inbounds %struct.ath10k_hw_clk_params, %struct.ath10k_hw_clk_params* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @WLAN_PLL_CONTROL_DIV, align 4
  %221 = call i32 @SM(i32 %219, i32 %220)
  %222 = or i32 %216, %221
  %223 = load i32, i32* @WLAN_PLL_CONTROL_NOPWD, align 4
  %224 = call i32 @SM(i32 1, i32 %223)
  %225 = or i32 %222, %224
  %226 = load i32, i32* %10, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %10, align 4
  %228 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %228, i32 %229, i32 %230)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %211
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %412

237:                                              ; preds = %211
  store i32 100000, i32* %5, align 4
  %238 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %239 = load i32, i32* @RTC_SYNC_STATUS_OFFSET, align 4
  %240 = or i32 %238, %239
  store i32 %240, i32* %9, align 4
  br label %241

241:                                              ; preds = %260, %237
  %242 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %242, i32 %243, i32* %10)
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %2, align 4
  br label %412

250:                                              ; preds = %241
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @RTC_SYNC_STATUS_PLL_CHANGING, align 4
  %253 = call i32 @MS(i32 %251, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %250
  br label %263

256:                                              ; preds = %250
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %5, align 4
  %259 = call i32 @udelay(i32 10)
  br label %260

260:                                              ; preds = %256
  %261 = load i32, i32* %5, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %241, label %263

263:                                              ; preds = %260, %255
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* @RTC_SYNC_STATUS_PLL_CHANGING, align 4
  %266 = call i32 @MS(i32 %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %2, align 4
  br label %412

271:                                              ; preds = %263
  %272 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %273 = load i32, i32* @WLAN_PLL_CONTROL_OFFSET, align 4
  %274 = or i32 %272, %273
  store i32 %274, i32* %9, align 4
  %275 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %275, i32 %276, i32* %10)
  store i32 %277, i32* %4, align 4
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %2, align 4
  br label %412

283:                                              ; preds = %271
  %284 = load i32, i32* @WLAN_PLL_CONTROL_BYPASS_MASK, align 4
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %10, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* @WLAN_PLL_CONTROL_BYPASS, align 4
  %289 = call i32 @SM(i32 0, i32 %288)
  %290 = load i32, i32* %10, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %10, align 4
  %292 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %292, i32 %293, i32 %294)
  store i32 %295, i32* %4, align 4
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %283
  %299 = load i32, i32* @EINVAL, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %2, align 4
  br label %412

301:                                              ; preds = %283
  store i32 100000, i32* %5, align 4
  %302 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %303 = load i32, i32* @RTC_SYNC_STATUS_OFFSET, align 4
  %304 = or i32 %302, %303
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %324, %301
  %306 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %307 = load i32, i32* %9, align 4
  %308 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %306, i32 %307, i32* %10)
  store i32 %308, i32* %4, align 4
  %309 = load i32, i32* %4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %305
  %312 = load i32, i32* @EINVAL, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %2, align 4
  br label %412

314:                                              ; preds = %305
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* @RTC_SYNC_STATUS_PLL_CHANGING, align 4
  %317 = call i32 @MS(i32 %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %314
  br label %327

320:                                              ; preds = %314
  %321 = load i32, i32* %5, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %5, align 4
  %323 = call i32 @udelay(i32 10)
  br label %324

324:                                              ; preds = %320
  %325 = load i32, i32* %5, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %305, label %327

327:                                              ; preds = %324, %319
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* @RTC_SYNC_STATUS_PLL_CHANGING, align 4
  %330 = call i32 @MS(i32 %328, i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %2, align 4
  br label %412

335:                                              ; preds = %327
  %336 = load i32, i32* @RTC_SOC_BASE_ADDRESS, align 4
  %337 = load i32, i32* @SOC_CPU_CLOCK_OFFSET, align 4
  %338 = or i32 %336, %337
  store i32 %338, i32* %9, align 4
  %339 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %340 = load i32, i32* %9, align 4
  %341 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %339, i32 %340, i32* %10)
  store i32 %341, i32* %4, align 4
  %342 = load i32, i32* %4, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %335
  %345 = load i32, i32* @EINVAL, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %2, align 4
  br label %412

347:                                              ; preds = %335
  %348 = load i32, i32* @SOC_CPU_CLOCK_STANDARD_MASK, align 4
  %349 = xor i32 %348, -1
  %350 = load i32, i32* %10, align 4
  %351 = and i32 %350, %349
  store i32 %351, i32* %10, align 4
  %352 = load i32, i32* @SOC_CPU_CLOCK_STANDARD, align 4
  %353 = call i32 @SM(i32 1, i32 %352)
  %354 = load i32, i32* %10, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %10, align 4
  %356 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %356, i32 %357, i32 %358)
  store i32 %359, i32* %4, align 4
  %360 = load i32, i32* %4, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %347
  %363 = load i32, i32* @EINVAL, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %2, align 4
  br label %412

365:                                              ; preds = %347
  %366 = load i32, i32* @RTC_WMAC_BASE_ADDRESS, align 4
  %367 = load i32, i32* @WLAN_PLL_CONTROL_OFFSET, align 4
  %368 = or i32 %366, %367
  store i32 %368, i32* %9, align 4
  %369 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %370 = load i32, i32* %9, align 4
  %371 = call i32 @ath10k_bmi_read_soc_reg(%struct.ath10k* %369, i32 %370, i32* %10)
  store i32 %371, i32* %4, align 4
  %372 = load i32, i32* %4, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %365
  %375 = load i32, i32* @EINVAL, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %2, align 4
  br label %412

377:                                              ; preds = %365
  %378 = load i32, i32* @WLAN_PLL_CONTROL_NOPWD_MASK, align 4
  %379 = xor i32 %378, -1
  %380 = load i32, i32* %10, align 4
  %381 = and i32 %380, %379
  store i32 %381, i32* %10, align 4
  %382 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* %10, align 4
  %385 = call i32 @ath10k_bmi_write_soc_reg(%struct.ath10k* %382, i32 %383, i32 %384)
  store i32 %385, i32* %4, align 4
  %386 = load i32, i32* %4, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %377
  %389 = load i32, i32* @EINVAL, align 4
  %390 = sub nsw i32 0, %389
  store i32 %390, i32* %2, align 4
  br label %412

391:                                              ; preds = %377
  store i32 1, i32* %11, align 4
  %392 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %393 = load i32, i32* %7, align 4
  %394 = call i32 @ath10k_bmi_write_memory(%struct.ath10k* %392, i32 %393, i32* %11, i32 4)
  store i32 %394, i32* %4, align 4
  %395 = load i32, i32* %4, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %391
  %398 = load i32, i32* @EINVAL, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %2, align 4
  br label %412

400:                                              ; preds = %391
  %401 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %402 = load i32, i32* %8, align 4
  %403 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %12, align 8
  %404 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %403, i32 0, i32 0
  %405 = call i32 @ath10k_bmi_write_memory(%struct.ath10k* %401, i32 %402, i32* %404, i32 4)
  store i32 %405, i32* %4, align 4
  %406 = load i32, i32* %4, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %400
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %2, align 4
  br label %412

411:                                              ; preds = %400
  store i32 0, i32* %2, align 4
  br label %412

412:                                              ; preds = %411, %408, %397, %388, %374, %362, %344, %332, %311, %298, %280, %268, %247, %234, %208, %196, %187, %169, %157, %136, %124, %95, %75, %66, %36
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i32 @ath10k_bmi_read_soc_reg(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath10k_bmi_write_soc_reg(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_bmi_write_memory(%struct.ath10k*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
