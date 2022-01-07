; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cal_dev = type { %struct.cal_ctx**, i8**, i8*, %struct.TYPE_5__*, i8*, %struct.platform_device*, %struct.TYPE_4__ }
%struct.cal_ctx = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAL_MODULE_NAME = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cal_top\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ioresource %s at %pa - %pa\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"got irq# %d\0A\00", align 1
@cal_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Neither port is configured, no point in staying up\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CAL_NUM_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cal_dev*, align 8
  %5 = alloca %struct.cal_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.cal_dev* @devm_kzalloc(i32* %10, i32 56, i32 %11)
  store %struct.cal_dev* %12, %struct.cal_dev** %4, align 8
  %13 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %14 = icmp ne %struct.cal_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %235

18:                                               ; preds = %1
  %19 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %20 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAL_MODULE_NAME, align 4
  %24 = call i32 @strscpy(i32 %22, i32 %23, i32 4)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %26, i32 0, i32 5
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.TYPE_5__* @platform_get_resource_byname(%struct.platform_device* %28, i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %32 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %31, i32 0, i32 3
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i8* @devm_ioremap_resource(i32* %34, %struct.TYPE_5__* %37)
  %39 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %40 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %42 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %41, i32 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %18
  %47 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %235

51:                                               ; preds = %18
  %52 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %53 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %54 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %59 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %63 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 (i32, %struct.cal_dev*, i8*, i32, ...) @cal_dbg(i32 1, %struct.cal_dev* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32* %61, i32* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i32, %struct.cal_dev*, i8*, i32, ...) @cal_dbg(i32 1, %struct.cal_dev* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @cal_irq, align 4
  %76 = load i32, i32* @CAL_MODULE_NAME, align 4
  %77 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %78 = call i32 @devm_request_irq(i32* %73, i32 %74, i32 %75, i32 0, i32 %76, %struct.cal_dev* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %51
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %235

83:                                               ; preds = %51
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %86 = call i32 @platform_set_drvdata(%struct.platform_device* %84, %struct.cal_dev* %85)
  %87 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %88 = call i8* @cm_create(%struct.cal_dev* %87)
  %89 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %90 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %92 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %98 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @PTR_ERR(i8* %99)
  store i32 %100, i32* %2, align 4
  br label %235

101:                                              ; preds = %83
  %102 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %103 = call i8* @cc_create(%struct.cal_dev* %102, i32 0)
  %104 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %105 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %104, i32 0, i32 1
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  store i8* %103, i8** %107, align 8
  %108 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %109 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %101
  %116 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %117 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %2, align 4
  br label %235

122:                                              ; preds = %101
  %123 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %124 = call i8* @cc_create(%struct.cal_dev* %123, i32 1)
  %125 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %126 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  store i8* %124, i8** %128, align 8
  %129 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %130 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @IS_ERR(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %122
  %137 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %138 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %2, align 4
  br label %235

143:                                              ; preds = %122
  %144 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %145 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %144, i32 0, i32 0
  %146 = load %struct.cal_ctx**, %struct.cal_ctx*** %145, align 8
  %147 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %146, i64 0
  store %struct.cal_ctx* null, %struct.cal_ctx** %147, align 8
  %148 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %149 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %148, i32 0, i32 0
  %150 = load %struct.cal_ctx**, %struct.cal_ctx*** %149, align 8
  %151 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %150, i64 1
  store %struct.cal_ctx* null, %struct.cal_ctx** %151, align 8
  %152 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %153 = call i8* @cal_create_instance(%struct.cal_dev* %152, i32 0)
  %154 = bitcast i8* %153 to %struct.cal_ctx*
  %155 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %156 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %155, i32 0, i32 0
  %157 = load %struct.cal_ctx**, %struct.cal_ctx*** %156, align 8
  %158 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %157, i64 0
  store %struct.cal_ctx* %154, %struct.cal_ctx** %158, align 8
  %159 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %160 = call i8* @cal_create_instance(%struct.cal_dev* %159, i32 1)
  %161 = bitcast i8* %160 to %struct.cal_ctx*
  %162 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %163 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %162, i32 0, i32 0
  %164 = load %struct.cal_ctx**, %struct.cal_ctx*** %163, align 8
  %165 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %164, i64 1
  store %struct.cal_ctx* %161, %struct.cal_ctx** %165, align 8
  %166 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %167 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %166, i32 0, i32 0
  %168 = load %struct.cal_ctx**, %struct.cal_ctx*** %167, align 8
  %169 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %168, i64 0
  %170 = load %struct.cal_ctx*, %struct.cal_ctx** %169, align 8
  %171 = icmp ne %struct.cal_ctx* %170, null
  br i1 %171, label %184, label %172

172:                                              ; preds = %143
  %173 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %174 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %173, i32 0, i32 0
  %175 = load %struct.cal_ctx**, %struct.cal_ctx*** %174, align 8
  %176 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %175, i64 1
  %177 = load %struct.cal_ctx*, %struct.cal_ctx** %176, align 8
  %178 = icmp ne %struct.cal_ctx* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %172
  %180 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %181 = call i32 @cal_err(%struct.cal_dev* %180, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %182 = load i32, i32* @ENODEV, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %235

184:                                              ; preds = %172, %143
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @pm_runtime_enable(i32* %186)
  %188 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %189 = call i32 @cal_runtime_get(%struct.cal_dev* %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %198

193:                                              ; preds = %184
  %194 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %195 = call i32 @cal_get_hwinfo(%struct.cal_dev* %194)
  %196 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %197 = call i32 @cal_runtime_put(%struct.cal_dev* %196)
  store i32 0, i32* %2, align 4
  br label %235

198:                                              ; preds = %192
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @pm_runtime_disable(i32* %200)
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %230, %198
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @CAL_NUM_CONTEXT, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %233

206:                                              ; preds = %202
  %207 = load %struct.cal_dev*, %struct.cal_dev** %4, align 8
  %208 = getelementptr inbounds %struct.cal_dev, %struct.cal_dev* %207, i32 0, i32 0
  %209 = load %struct.cal_ctx**, %struct.cal_ctx*** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.cal_ctx*, %struct.cal_ctx** %209, i64 %211
  %213 = load %struct.cal_ctx*, %struct.cal_ctx** %212, align 8
  store %struct.cal_ctx* %213, %struct.cal_ctx** %5, align 8
  %214 = load %struct.cal_ctx*, %struct.cal_ctx** %5, align 8
  %215 = icmp ne %struct.cal_ctx* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %206
  %217 = load %struct.cal_ctx*, %struct.cal_ctx** %5, align 8
  %218 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %217, i32 0, i32 2
  %219 = call i32 @v4l2_async_notifier_unregister(i32* %218)
  %220 = load %struct.cal_ctx*, %struct.cal_ctx** %5, align 8
  %221 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %220, i32 0, i32 2
  %222 = call i32 @v4l2_async_notifier_cleanup(i32* %221)
  %223 = load %struct.cal_ctx*, %struct.cal_ctx** %5, align 8
  %224 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %223, i32 0, i32 1
  %225 = call i32 @v4l2_ctrl_handler_free(i32* %224)
  %226 = load %struct.cal_ctx*, %struct.cal_ctx** %5, align 8
  %227 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %226, i32 0, i32 0
  %228 = call i32 @v4l2_device_unregister(i32* %227)
  br label %229

229:                                              ; preds = %216, %206
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %8, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %8, align 4
  br label %202

233:                                              ; preds = %202
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %233, %193, %179, %136, %115, %96, %81, %46, %15
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.cal_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @cal_dbg(i32, %struct.cal_dev*, i8*, i32, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.cal_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cal_dev*) #1

declare dso_local i8* @cm_create(%struct.cal_dev*) #1

declare dso_local i8* @cc_create(%struct.cal_dev*, i32) #1

declare dso_local i8* @cal_create_instance(%struct.cal_dev*, i32) #1

declare dso_local i32 @cal_err(%struct.cal_dev*, i8*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @cal_runtime_get(%struct.cal_dev*) #1

declare dso_local i32 @cal_get_hwinfo(%struct.cal_dev*) #1

declare dso_local i32 @cal_runtime_put(%struct.cal_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
