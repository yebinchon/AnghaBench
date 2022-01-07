; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_driverdata = type { i32, i32, i32*, i32* }
%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.gsc_dev = type { i32, i32, i32*, i32, i32, i32, i32, i32, %struct.platform_device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gsc\00", align 1
@gsc_v_100_drvdata = common dso_local global %struct.gsc_driverdata zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"compatible 'exynos5-gsc' is deprecated\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid platform device id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"clock prepare failed for clock: %s\0A\00", align 1
@gsc_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"gsc-%d registered successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gsc_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gsc_driverdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.gsc_driverdata* @of_device_get_match_data(%struct.device* %12)
  store %struct.gsc_driverdata* %13, %struct.gsc_driverdata** %7, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.gsc_dev* @devm_kzalloc(%struct.device* %14, i32 56, i32 %15)
  store %struct.gsc_dev* %16, %struct.gsc_dev** %4, align 8
  %17 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %18 = icmp ne %struct.gsc_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %294

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @of_alias_get_id(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %294

32:                                               ; preds = %22
  %33 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %34 = icmp eq %struct.gsc_driverdata* %33, @gsc_v_100_drvdata
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %41 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %43 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %46 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %294

57:                                               ; preds = %38
  %58 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %59 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %62 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %64 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %73 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %75, i32 0, i32 8
  store %struct.platform_device* %74, %struct.platform_device** %76, align 8
  %77 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %78 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %77, i32 0, i32 7
  %79 = call i32 @init_waitqueue_head(i32* %78)
  %80 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %80, i32 0, i32 6
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %84 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %83, i32 0, i32 5
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load i32, i32* @IORESOURCE_MEM, align 4
  %88 = call %struct.resource* @platform_get_resource(%struct.platform_device* %86, i32 %87, i32 0)
  store %struct.resource* %88, %struct.resource** %5, align 8
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.resource*, %struct.resource** %5, align 8
  %91 = call i32 @devm_ioremap_resource(%struct.device* %89, %struct.resource* %90)
  %92 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %93 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %95 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %57
  %100 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %101 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %2, align 4
  br label %294

104:                                              ; preds = %57
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load i32, i32* @IORESOURCE_IRQ, align 4
  %107 = call %struct.resource* @platform_get_resource(%struct.platform_device* %105, i32 %106, i32 0)
  store %struct.resource* %107, %struct.resource** %5, align 8
  %108 = load %struct.resource*, %struct.resource** %5, align 8
  %109 = icmp ne %struct.resource* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %294

115:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %166, %115
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %119 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %169

122:                                              ; preds = %116
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %125 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @devm_clk_get(%struct.device* %123, i32 %130)
  %132 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %133 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %139 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @IS_ERR(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %122
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %150 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  %157 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %158 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @PTR_ERR(i32 %163)
  store i32 %164, i32* %2, align 4
  br label %294

165:                                              ; preds = %122
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %116

169:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %213, %169
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %173 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %216

176:                                              ; preds = %170
  %177 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %178 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @clk_prepare_enable(i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %176
  %188 = load %struct.device*, %struct.device** %6, align 8
  %189 = load %struct.gsc_driverdata*, %struct.gsc_driverdata** %7, align 8
  %190 = getelementptr inbounds %struct.gsc_driverdata, %struct.gsc_driverdata* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %201, %187
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %9, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %197
  %202 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %203 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @clk_disable_unprepare(i32 %208)
  br label %197

210:                                              ; preds = %197
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %2, align 4
  br label %294

212:                                              ; preds = %176
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %170

216:                                              ; preds = %170
  %217 = load %struct.device*, %struct.device** %6, align 8
  %218 = load %struct.resource*, %struct.resource** %5, align 8
  %219 = getelementptr inbounds %struct.resource, %struct.resource* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @gsc_irq_handler, align 4
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %226 = call i32 @devm_request_irq(%struct.device* %217, i32 %220, i32 %221, i32 0, i32 %224, %struct.gsc_dev* %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %216
  %230 = load %struct.device*, %struct.device** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %230, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  br label %272

233:                                              ; preds = %216
  %234 = load %struct.device*, %struct.device** %6, align 8
  %235 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %236 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %235, i32 0, i32 3
  %237 = call i32 @v4l2_device_register(%struct.device* %234, i32* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  br label %272

241:                                              ; preds = %233
  %242 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %243 = call i32 @gsc_register_m2m_device(%struct.gsc_dev* %242)
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  br label %268

247:                                              ; preds = %241
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %250 = call i32 @platform_set_drvdata(%struct.platform_device* %248, %struct.gsc_dev* %249)
  %251 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %252 = call i32 @gsc_hw_set_sw_reset(%struct.gsc_dev* %251)
  %253 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %254 = call i32 @gsc_wait_reset(%struct.gsc_dev* %253)
  %255 = load %struct.device*, %struct.device** %6, align 8
  %256 = call i32 @DMA_BIT_MASK(i32 32)
  %257 = call i32 @vb2_dma_contig_set_max_seg_size(%struct.device* %255, i32 %256)
  %258 = load %struct.device*, %struct.device** %6, align 8
  %259 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %260 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = call i32 @dev_dbg(%struct.device* %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %262)
  %264 = load %struct.device*, %struct.device** %6, align 8
  %265 = call i32 @pm_runtime_set_active(%struct.device* %264)
  %266 = load %struct.device*, %struct.device** %6, align 8
  %267 = call i32 @pm_runtime_enable(%struct.device* %266)
  store i32 0, i32* %2, align 4
  br label %294

268:                                              ; preds = %246
  %269 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %270 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %269, i32 0, i32 3
  %271 = call i32 @v4l2_device_unregister(i32* %270)
  br label %272

272:                                              ; preds = %268, %240, %229
  %273 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %274 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %289, %272
  %278 = load i32, i32* %9, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %282 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @clk_disable_unprepare(i32 %287)
  br label %289

289:                                              ; preds = %280
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %9, align 4
  br label %277

292:                                              ; preds = %277
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %292, %247, %210, %147, %110, %99, %49, %30, %19
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local %struct.gsc_driverdata* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.gsc_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.gsc_dev*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local i32 @gsc_register_m2m_device(%struct.gsc_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gsc_dev*) #1

declare dso_local i32 @gsc_hw_set_sw_reset(%struct.gsc_dev*) #1

declare dso_local i32 @gsc_wait_reset(%struct.gsc_dev*) #1

declare dso_local i32 @vb2_dma_contig_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
