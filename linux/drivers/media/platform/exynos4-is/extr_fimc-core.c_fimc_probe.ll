; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.fimc_dev = type { i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i64, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid driver data or device id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CLK_BUS = common dso_local global i64 0, align 8
@fimc_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@CLK_GATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"FIMC.%d registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fimc_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fimc_dev* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.fimc_dev* %13, %struct.fimc_dev** %6, align 8
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %15 = icmp ne %struct.fimc_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %256

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %22 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %21, i32 0, i32 9
  store %struct.platform_device* %20, %struct.platform_device** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %29 = call i32 @fimc_parse_dt(%struct.fimc_dev* %28, i64* %5)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %256

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %19
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call %struct.TYPE_2__* @fimc_get_drvdata(%struct.platform_device* %36)
  %38 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %39 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %38, i32 0, i32 2
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %44 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %34
  %46 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %47 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %52 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %55 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %53, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %50
  %61 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %62 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60, %50, %45
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %68 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %256

73:                                               ; preds = %60
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %73
  %79 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %80 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %85 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %91 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %78, %73
  %93 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %94 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %93, i32 0, i32 7
  %95 = call i32 @init_waitqueue_head(i32* %94)
  %96 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %97 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %96, i32 0, i32 6
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %100 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %99, i32 0, i32 5
  %101 = call i32 @mutex_init(i32* %100)
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @fimc_get_sysreg_regmap(i64 %104)
  %106 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %107 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %109 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %92
  %114 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %115 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %2, align 4
  br label %256

118:                                              ; preds = %92
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load i32, i32* @IORESOURCE_MEM, align 4
  %121 = call %struct.resource* @platform_get_resource(%struct.platform_device* %119, i32 %120, i32 0)
  store %struct.resource* %121, %struct.resource** %7, align 8
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.resource*, %struct.resource** %7, align 8
  %124 = call i32 @devm_ioremap_resource(%struct.device* %122, %struct.resource* %123)
  %125 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %126 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  %127 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %128 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @IS_ERR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %118
  %133 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %134 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PTR_ERR(i32 %135)
  store i32 %136, i32* %2, align 4
  br label %256

137:                                              ; preds = %118
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = load i32, i32* @IORESOURCE_IRQ, align 4
  %140 = call %struct.resource* @platform_get_resource(%struct.platform_device* %138, i32 %139, i32 0)
  store %struct.resource* %140, %struct.resource** %7, align 8
  %141 = load %struct.resource*, %struct.resource** %7, align 8
  %142 = icmp eq %struct.resource* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* @ENXIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %256

148:                                              ; preds = %137
  %149 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %150 = call i32 @fimc_clk_get(%struct.fimc_dev* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %256

155:                                              ; preds = %148
  %156 = load i64, i64* %5, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %160 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %158, %155
  %165 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %166 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @CLK_BUS, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @clk_set_rate(i32 %170, i64 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %2, align 4
  br label %256

177:                                              ; preds = %164
  %178 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %179 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @CLK_BUS, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @clk_enable(i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %256

189:                                              ; preds = %177
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = load %struct.resource*, %struct.resource** %7, align 8
  %192 = getelementptr inbounds %struct.resource, %struct.resource* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @fimc_irq_handler, align 4
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = call i32 @dev_name(%struct.device* %195)
  %197 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %198 = call i32 @devm_request_irq(%struct.device* %190, i32 %193, i32 %194, i32 0, i32 %196, %struct.fimc_dev* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %189
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  br label %245

205:                                              ; preds = %189
  %206 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %207 = call i32 @fimc_initialize_capture_subdev(%struct.fimc_dev* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %245

211:                                              ; preds = %205
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %214 = call i32 @platform_set_drvdata(%struct.platform_device* %212, %struct.fimc_dev* %213)
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = call i32 @pm_runtime_enable(%struct.device* %215)
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = call i32 @pm_runtime_enabled(%struct.device* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %211
  %221 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %222 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @CLK_GATE, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @clk_enable(i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %242

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %211
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = call i32 @DMA_BIT_MASK(i32 32)
  %235 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %233, i32 %234)
  %236 = load %struct.device*, %struct.device** %4, align 8
  %237 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %238 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = call i32 @dev_dbg(%struct.device* %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %240)
  store i32 0, i32* %2, align 4
  br label %256

242:                                              ; preds = %230
  %243 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %244 = call i32 @fimc_unregister_capture_subdev(%struct.fimc_dev* %243)
  br label %245

245:                                              ; preds = %242, %210, %201
  %246 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %247 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* @CLK_BUS, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @clk_disable(i32 %251)
  %253 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %254 = call i32 @fimc_clk_put(%struct.fimc_dev* %253)
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %2, align 4
  br label %256

256:                                              ; preds = %245, %232, %187, %175, %153, %143, %132, %113, %65, %32, %16
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.fimc_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @fimc_parse_dt(%struct.fimc_dev*, i64*) #1

declare dso_local %struct.TYPE_2__* @fimc_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fimc_get_sysreg_regmap(i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @fimc_clk_get(%struct.fimc_dev*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.fimc_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @fimc_initialize_capture_subdev(%struct.fimc_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimc_dev*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @fimc_unregister_capture_subdev(%struct.fimc_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @fimc_clk_put(%struct.fimc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
