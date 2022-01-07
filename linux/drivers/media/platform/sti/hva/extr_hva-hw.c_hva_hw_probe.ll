; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hva_dev = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s     failed to get regs\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s     failed to get esram\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s     esram reserved for address: 0x%x size:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clk_hva\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s     failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s     failed to prepare clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hva_hw_its_interrupt = common dso_local global i32 0, align 4
@hva_hw_its_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"hva_its_irq\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"%s     failed to install status IRQ 0x%x\0A\00", align 1
@hva_hw_err_interrupt = common dso_local global i32 0, align 4
@hva_hw_err_irq_thread = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"hva_err_irq\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s     failed to install error IRQ 0x%x\0A\00", align 1
@AUTOSUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"%s     failed to set PM\0A\00", align 1
@HVA_VERSION_UNKNOWN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"%s     found hva device (version 0x%lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hva_hw_probe(%struct.platform_device* %0, %struct.hva_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hva_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hva_dev* %1, %struct.hva_dev** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %13 = icmp ne %struct.hva_dev* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %7, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.resource*, %struct.resource** %7, align 8
  %22 = call i32 @devm_ioremap_resource(%struct.device* %20, %struct.resource* %21)
  %23 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @HVA_PREFIX, align 4
  %33 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %227

38:                                               ; preds = %2
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  store %struct.resource* %41, %struct.resource** %8, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* @HVA_PREFIX, align 4
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %227

50:                                               ; preds = %38
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.resource*, %struct.resource** %8, align 8
  %57 = call i32 @resource_size(%struct.resource* %56)
  %58 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %59 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* @HVA_PREFIX, align 4
  %62 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %67 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_info(%struct.device* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %65, i32 %68)
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %73 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %75 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %50
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i32, i32* @HVA_PREFIX, align 4
  %82 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %84 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %227

87:                                               ; preds = %50
  %88 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %89 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @clk_prepare(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* @HVA_PREFIX, align 4
  %97 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 @ERR_PTR(i32 %99)
  %101 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %102 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %227

104:                                              ; preds = %87
  %105 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %106 = call i32 @platform_get_irq(%struct.platform_device* %105, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %215

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %113 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %116 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @hva_hw_its_interrupt, align 4
  %119 = load i32, i32* @hva_hw_its_irq_thread, align 4
  %120 = load i32, i32* @IRQF_ONESHOT, align 4
  %121 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %122 = call i32 @devm_request_threaded_irq(%struct.device* %114, i32 %117, i32 %118, i32 %119, i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %struct.hva_dev* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %110
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load i32, i32* @HVA_PREFIX, align 4
  %128 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %129 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %127, i32 %130)
  br label %215

132:                                              ; preds = %110
  %133 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %134 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @disable_irq(i32 %135)
  %137 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %138 = call i32 @platform_get_irq(%struct.platform_device* %137, i32 1)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %215

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %145 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %148 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @hva_hw_err_interrupt, align 4
  %151 = load i32, i32* @hva_hw_err_irq_thread, align 4
  %152 = load i32, i32* @IRQF_ONESHOT, align 4
  %153 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %154 = call i32 @devm_request_threaded_irq(%struct.device* %146, i32 %149, i32 %150, i32 %151, i32 %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.hva_dev* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %142
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load i32, i32* @HVA_PREFIX, align 4
  %160 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %161 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %159, i32 %162)
  br label %215

164:                                              ; preds = %142
  %165 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %166 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @disable_irq(i32 %167)
  %169 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %170 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %169, i32 0, i32 5
  %171 = call i32 @mutex_init(i32* %170)
  %172 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %173 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %172, i32 0, i32 4
  %174 = call i32 @init_completion(i32* %173)
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = load i32, i32* @AUTOSUSPEND_DELAY_MS, align 4
  %177 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %175, i32 %176)
  %178 = load %struct.device*, %struct.device** %6, align 8
  %179 = call i32 @pm_runtime_use_autosuspend(%struct.device* %178)
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 @pm_runtime_set_suspended(%struct.device* %180)
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = call i32 @pm_runtime_enable(%struct.device* %182)
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = call i32 @pm_runtime_get_sync(%struct.device* %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %164
  %189 = load %struct.device*, %struct.device** %6, align 8
  %190 = load i32, i32* @HVA_PREFIX, align 4
  %191 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %190)
  br label %215

192:                                              ; preds = %164
  %193 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %194 = call i64 @hva_hw_get_ip_version(%struct.hva_dev* %193)
  %195 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %196 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %198 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HVA_VERSION_UNKNOWN, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %9, align 4
  br label %212

205:                                              ; preds = %192
  %206 = load %struct.device*, %struct.device** %6, align 8
  %207 = load i32, i32* @HVA_PREFIX, align 4
  %208 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %209 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_info(%struct.device* %206, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %207, i64 %210)
  store i32 0, i32* %3, align 4
  br label %227

212:                                              ; preds = %202
  %213 = load %struct.device*, %struct.device** %6, align 8
  %214 = call i32 @pm_runtime_put(%struct.device* %213)
  br label %215

215:                                              ; preds = %212, %188, %157, %141, %125, %109
  %216 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %217 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %222 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @clk_unprepare(i32 %223)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %205, %94, %79, %44, %30
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.hva_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @hva_hw_get_ip_version(%struct.hva_dev*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
