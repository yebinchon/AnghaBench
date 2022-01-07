; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_setup_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isphist.c_hist_setup_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i64, i32, i64, i32, i64, %struct.isp_device* }
%struct.isp_device = type { i32 }
%struct.omap3isp_hist_config = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OMAP3ISP_HIST_MAX_REGIONS = common dso_local global i32 0, align 4
@ISPSTAT_DISABLED = common dso_local global i64 0, align 8
@ISPSTAT_DISABLING = common dso_local global i64 0, align 8
@ISPHIST_CNT_CFA_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_WB_GAIN_WG00_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_WB_GAIN_WG01_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_WB_GAIN_WG02_SHIFT = common dso_local global i32 0, align 4
@OMAP3ISP_HIST_CFA_BAYER = common dso_local global i32 0, align 4
@ISPHIST_WB_GAIN_WG03_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_REG_START_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_REG_END_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_CNT_BINS_SHIFT = common dso_local global i32 0, align 4
@ISPHIST_IN_BIT_WIDTH_CCDC = common dso_local global i32 0, align 4
@ISPHIST_CNT_SHIFT_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_HIST = common dso_local global i32 0, align 4
@ISPHIST_CNT = common dso_local global i32 0, align 4
@ISPHIST_WB_GAIN = common dso_local global i32 0, align 4
@ISPHIST_R0_HORZ = common dso_local global i32 0, align 4
@ISPHIST_R0_VERT = common dso_local global i32 0, align 4
@ISPHIST_R1_HORZ = common dso_local global i32 0, align 4
@ISPHIST_R1_VERT = common dso_local global i32 0, align 4
@ISPHIST_R2_HORZ = common dso_local global i32 0, align 4
@ISPHIST_R2_VERT = common dso_local global i32 0, align 4
@ISPHIST_R3_HORZ = common dso_local global i32 0, align 4
@ISPHIST_R3_VERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispstat*, i8*)* @hist_setup_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_setup_regs(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca %struct.ispstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.omap3isp_hist_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ispstat* %0, %struct.ispstat** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %15 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %14, i32 0, i32 5
  %16 = load %struct.isp_device*, %struct.isp_device** %15, align 8
  store %struct.isp_device* %16, %struct.isp_device** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.omap3isp_hist_config*
  store %struct.omap3isp_hist_config* %18, %struct.omap3isp_hist_config** %6, align 8
  %19 = load i32, i32* @OMAP3ISP_HIST_MAX_REGIONS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @OMAP3ISP_HIST_MAX_REGIONS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %27 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %32 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ISPSTAT_DISABLED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %38 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISPSTAT_DISABLING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30, %2
  store i32 1, i32* %13, align 4
  br label %278

43:                                               ; preds = %36
  %44 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %45 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ISPHIST_CNT_CFA_SHIFT, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %50 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ISPHIST_WB_GAIN_WG00_SHIFT, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %57 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ISPHIST_WB_GAIN_WG01_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %66 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ISPHIST_WB_GAIN_WG02_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %75 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @OMAP3ISP_HIST_CFA_BAYER, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %43
  %80 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %81 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ISPHIST_WB_GAIN_WG03_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %79, %43
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %157, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @OMAP3ISP_HIST_MAX_REGIONS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %160

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %97 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %94
  %101 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %102 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ISPHIST_REG_START_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %112 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %111, i32 0, i32 5
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ISPHIST_REG_END_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %110, %120
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %22, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %126 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %125, i32 0, i32 5
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ISPHIST_REG_START_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %136 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %135, i32 0, i32 5
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ISPHIST_REG_END_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %134, %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %25, i64 %147
  store i32 %145, i32* %148, align 4
  br label %156

149:                                              ; preds = %94
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %22, i64 %151
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %25, i64 %154
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %100
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %90

160:                                              ; preds = %90
  %161 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %162 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ISPHIST_CNT_BINS_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load i32, i32* %8, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %169 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %192 [
    i32 129, label %171
    i32 130, label %178
    i32 128, label %185
  ]

171:                                              ; preds = %160
  %172 = load i32, i32* @ISPHIST_IN_BIT_WIDTH_CCDC, align 4
  %173 = sub nsw i32 %172, 8
  %174 = load i32, i32* @ISPHIST_CNT_SHIFT_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %199

178:                                              ; preds = %160
  %179 = load i32, i32* @ISPHIST_IN_BIT_WIDTH_CCDC, align 4
  %180 = sub nsw i32 %179, 7
  %181 = load i32, i32* @ISPHIST_CNT_SHIFT_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  br label %199

185:                                              ; preds = %160
  %186 = load i32, i32* @ISPHIST_IN_BIT_WIDTH_CCDC, align 4
  %187 = sub nsw i32 %186, 6
  %188 = load i32, i32* @ISPHIST_CNT_SHIFT_SHIFT, align 4
  %189 = shl i32 %187, %188
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %199

192:                                              ; preds = %160
  %193 = load i32, i32* @ISPHIST_IN_BIT_WIDTH_CCDC, align 4
  %194 = sub nsw i32 %193, 5
  %195 = load i32, i32* @ISPHIST_CNT_SHIFT_SHIFT, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* %8, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %192, %185, %178, %171
  %200 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %201 = call i32 @hist_reset_mem(%struct.ispstat* %200)
  %202 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %205 = load i32, i32* @ISPHIST_CNT, align 4
  %206 = call i32 @isp_reg_writel(%struct.isp_device* %202, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %210 = load i32, i32* @ISPHIST_WB_GAIN, align 4
  %211 = call i32 @isp_reg_writel(%struct.isp_device* %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %213 = getelementptr inbounds i32, i32* %22, i64 0
  %214 = load i32, i32* %213, align 16
  %215 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %216 = load i32, i32* @ISPHIST_R0_HORZ, align 4
  %217 = call i32 @isp_reg_writel(%struct.isp_device* %212, i32 %214, i32 %215, i32 %216)
  %218 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %219 = getelementptr inbounds i32, i32* %25, i64 0
  %220 = load i32, i32* %219, align 16
  %221 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %222 = load i32, i32* @ISPHIST_R0_VERT, align 4
  %223 = call i32 @isp_reg_writel(%struct.isp_device* %218, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %225 = getelementptr inbounds i32, i32* %22, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %228 = load i32, i32* @ISPHIST_R1_HORZ, align 4
  %229 = call i32 @isp_reg_writel(%struct.isp_device* %224, i32 %226, i32 %227, i32 %228)
  %230 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %231 = getelementptr inbounds i32, i32* %25, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %234 = load i32, i32* @ISPHIST_R1_VERT, align 4
  %235 = call i32 @isp_reg_writel(%struct.isp_device* %230, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %237 = getelementptr inbounds i32, i32* %22, i64 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %240 = load i32, i32* @ISPHIST_R2_HORZ, align 4
  %241 = call i32 @isp_reg_writel(%struct.isp_device* %236, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %243 = getelementptr inbounds i32, i32* %25, i64 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %246 = load i32, i32* @ISPHIST_R2_VERT, align 4
  %247 = call i32 @isp_reg_writel(%struct.isp_device* %242, i32 %244, i32 %245, i32 %246)
  %248 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %249 = getelementptr inbounds i32, i32* %22, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %252 = load i32, i32* @ISPHIST_R3_HORZ, align 4
  %253 = call i32 @isp_reg_writel(%struct.isp_device* %248, i32 %250, i32 %251, i32 %252)
  %254 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %255 = getelementptr inbounds i32, i32* %25, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @OMAP3_ISP_IOMEM_HIST, align 4
  %258 = load i32, i32* @ISPHIST_R3_VERT, align 4
  %259 = call i32 @isp_reg_writel(%struct.isp_device* %254, i32 %256, i32 %257, i32 %258)
  %260 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %261 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %260, i32 0, i32 4
  store i64 0, i64* %261, align 8
  %262 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %263 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %266 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %264
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %266, align 8
  %271 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %272 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %271, i32 0, i32 2
  store i64 0, i64* %272, align 8
  %273 = load %struct.omap3isp_hist_config*, %struct.omap3isp_hist_config** %6, align 8
  %274 = getelementptr inbounds %struct.omap3isp_hist_config, %struct.omap3isp_hist_config* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.ispstat*, %struct.ispstat** %3, align 8
  %277 = getelementptr inbounds %struct.ispstat, %struct.ispstat* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 8
  store i32 0, i32* %13, align 4
  br label %278

278:                                              ; preds = %199, %42
  %279 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %13, align 4
  switch i32 %280, label %282 [
    i32 0, label %281
    i32 1, label %281
  ]

281:                                              ; preds = %278, %278
  ret void

282:                                              ; preds = %278
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hist_reset_mem(%struct.ispstat*) #2

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
