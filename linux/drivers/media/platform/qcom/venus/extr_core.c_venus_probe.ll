; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.c_venus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i8* }
%struct.venus_core = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@venus_sys_error_handler = common dso_local global i32 0, align 4
@hfi_isr = common dso_local global i32 0, align 4
@hfi_isr_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"venus\00", align 1
@venus_core_ops = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_DEC = common dso_local global i32 0, align 4
@VIDC_SESSION_TYPE_ENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @venus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.venus_core*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.device* %10, i32 48, i32 %11)
  %13 = bitcast i8* %12 to %struct.venus_core*
  store %struct.venus_core* %13, %struct.venus_core** %5, align 8
  %14 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %15 = icmp ne %struct.venus_core* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %233

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %22 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %21, i32 0, i32 7
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.venus_core* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = call i32 @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %33 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %35 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %41 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %233

44:                                               ; preds = %19
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i64 @platform_get_irq(%struct.platform_device* %45, i32 0)
  %47 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %48 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %50 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %55 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %233

58:                                               ; preds = %44
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %59)
  %61 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %62 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %61, i32 0, i32 5
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %62, align 8
  %63 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %64 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %233

70:                                               ; preds = %58
  %71 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %72 = call i32 @venus_clks_get(%struct.venus_core* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %233

77:                                               ; preds = %70
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %80 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dma_set_mask_and_coherent(%struct.device* %78, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %233

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @devm_kzalloc(%struct.device* %95, i32 1, i32 %96)
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %233

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %89
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 @DMA_BIT_MASK(i32 32)
  %111 = call i32 @dma_set_max_seg_size(%struct.device* %109, i32 %110)
  %112 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %113 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %112, i32 0, i32 4
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %116 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %115, i32 0, i32 3
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %119 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %118, i32 0, i32 2
  %120 = load i32, i32* @venus_sys_error_handler, align 4
  %121 = call i32 @INIT_DELAYED_WORK(i32* %119, i32 %120)
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %124 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @hfi_isr, align 4
  %128 = load i32, i32* @hfi_isr_thread, align 4
  %129 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %130 = load i32, i32* @IRQF_ONESHOT, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %133 = call i32 @devm_request_threaded_irq(%struct.device* %122, i32 %126, i32 %127, i32 %128, i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.venus_core* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %108
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %233

138:                                              ; preds = %108
  %139 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %140 = call i32 @hfi_create(%struct.venus_core* %139, i32* @venus_core_ops)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %233

145:                                              ; preds = %138
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @pm_runtime_enable(%struct.device* %146)
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = call i32 @pm_runtime_get_sync(%struct.device* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %225

153:                                              ; preds = %145
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = getelementptr inbounds %struct.device, %struct.device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i32 @of_platform_populate(i32 %156, i32* null, i32* null, %struct.device* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %225

162:                                              ; preds = %153
  %163 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %164 = call i32 @venus_firmware_init(%struct.venus_core* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %225

168:                                              ; preds = %162
  %169 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %170 = call i32 @venus_boot(%struct.venus_core* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %225

174:                                              ; preds = %168
  %175 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %176 = call i32 @hfi_core_resume(%struct.venus_core* %175, i32 1)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %222

180:                                              ; preds = %174
  %181 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %182 = call i32 @hfi_core_init(%struct.venus_core* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %222

186:                                              ; preds = %180
  %187 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %188 = load i32, i32* @VIDC_SESSION_TYPE_DEC, align 4
  %189 = call i32 @venus_enumerate_codecs(%struct.venus_core* %187, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  br label %222

193:                                              ; preds = %186
  %194 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %195 = load i32, i32* @VIDC_SESSION_TYPE_ENC, align 4
  %196 = call i32 @venus_enumerate_codecs(%struct.venus_core* %194, i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %222

200:                                              ; preds = %193
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %203 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %202, i32 0, i32 1
  %204 = call i32 @v4l2_device_register(%struct.device* %201, i32* %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %219

208:                                              ; preds = %200
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = call i32 @pm_runtime_put_sync(%struct.device* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %215

214:                                              ; preds = %208
  store i32 0, i32* %2, align 4
  br label %233

215:                                              ; preds = %213
  %216 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %217 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %216, i32 0, i32 1
  %218 = call i32 @v4l2_device_unregister(i32* %217)
  br label %219

219:                                              ; preds = %215, %207
  %220 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %221 = call i32 @hfi_core_deinit(%struct.venus_core* %220, i32 0)
  br label %222

222:                                              ; preds = %219, %199, %192, %185, %179
  %223 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %224 = call i32 @venus_shutdown(%struct.venus_core* %223)
  br label %225

225:                                              ; preds = %222, %173, %167, %161, %152
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = call i32 @pm_runtime_set_suspended(%struct.device* %226)
  %228 = load %struct.device*, %struct.device** %4, align 8
  %229 = call i32 @pm_runtime_disable(%struct.device* %228)
  %230 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %231 = call i32 @hfi_destroy(%struct.venus_core* %230)
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %225, %214, %143, %136, %104, %87, %75, %67, %53, %39, %16
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.venus_core*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @venus_clks_get(%struct.venus_core*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.venus_core*) #1

declare dso_local i32 @hfi_create(%struct.venus_core*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @venus_firmware_init(%struct.venus_core*) #1

declare dso_local i32 @venus_boot(%struct.venus_core*) #1

declare dso_local i32 @hfi_core_resume(%struct.venus_core*, i32) #1

declare dso_local i32 @hfi_core_init(%struct.venus_core*) #1

declare dso_local i32 @venus_enumerate_codecs(%struct.venus_core*, i32) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @hfi_core_deinit(%struct.venus_core*, i32) #1

declare dso_local i32 @venus_shutdown(%struct.venus_core*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @hfi_destroy(%struct.venus_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
