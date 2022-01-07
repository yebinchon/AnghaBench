; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ab8500_gpadc = type { i64, i64, %struct.TYPE_9__*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SW_CONV_END\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to get platform sw_conv_end irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"HW_CONV_END\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to get platform hw_conv_end irq\0A\00", align 1
@ab8500_bm_gpadcconvend_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"ab8500-gpadc-sw\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to register interrupt irq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ab8500-gpadc-hw\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"vddadc\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get vtvout LDO\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to enable vtvout LDO: %d\0A\00", align 1
@GPADC_AUDOSUSPEND_DELAY = common dso_local global i32 0, align 4
@ab8500_gpadc_list = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"probe success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_gpadc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_gpadc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_gpadc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ab8500_gpadc* @devm_kzalloc(%struct.TYPE_9__* %7, i32 48, i32 %8)
  store %struct.ab8500_gpadc* %9, %struct.ab8500_gpadc** %5, align 8
  %10 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %11 = icmp ne %struct.ab8500_gpadc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %197

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i8* @platform_get_irq_byname(%struct.platform_device* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %20 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %27 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = call i8* @platform_get_irq_byname(%struct.platform_device* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %35 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %37 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %42 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %30
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %49 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %48, i32 0, i32 2
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_get_drvdata(i32 %53)
  %55 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %56 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %58 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %57, i32 0, i32 6
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %61 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %60, i32 0, i32 5
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %64 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %45
  %68 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %69 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @ab8500_bm_gpadcconvend_handler, align 4
  %72 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %73 = load i32, i32* @IRQF_SHARED, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IRQF_ONESHOT, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %78 = call i32 @request_threaded_irq(i64 %70, i32* null, i32 %71, i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.ab8500_gpadc* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %67
  %82 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %83 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %86 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  br label %195

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89, %45
  %91 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %92 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %97 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @ab8500_bm_gpadcconvend_handler, align 4
  %100 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %101 = load i32, i32* @IRQF_SHARED, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IRQF_ONESHOT, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %106 = call i32 @request_threaded_irq(i64 %98, i32* null, i32 %99, i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %struct.ab8500_gpadc* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %95
  %110 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %111 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %114 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  br label %182

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117, %90
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @devm_regulator_get(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %123 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %125 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @IS_ERR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %118
  %130 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %131 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @PTR_ERR(i32 %132)
  store i32 %133, i32* %4, align 4
  %134 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %135 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %134, i32 0, i32 2
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %182

138:                                              ; preds = %118
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %141 = call i32 @platform_set_drvdata(%struct.platform_device* %139, %struct.ab8500_gpadc* %140)
  %142 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %143 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @regulator_enable(i32 %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %138
  %149 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %150 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %149, i32 0, i32 2
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  br label %181

154:                                              ; preds = %138
  %155 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %156 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32, i32* @GPADC_AUDOSUSPEND_DELAY, align 4
  %159 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__* %157, i32 %158)
  %160 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %161 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %160, i32 0, i32 2
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__* %162)
  %164 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %165 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = call i32 @pm_runtime_set_active(%struct.TYPE_9__* %166)
  %168 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %169 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %168, i32 0, i32 2
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %170)
  %172 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %173 = call i32 @ab8500_gpadc_read_calibration_data(%struct.ab8500_gpadc* %172)
  %174 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %175 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %174, i32 0, i32 3
  %176 = call i32 @list_add_tail(i32* %175, i32* @ab8500_gpadc_list)
  %177 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %178 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %177, i32 0, i32 2
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = call i32 @dev_dbg(%struct.TYPE_9__* %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %197

181:                                              ; preds = %148
  br label %182

182:                                              ; preds = %181, %129, %109
  %183 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %184 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %188 = call i32 @free_irq(i32 %186, %struct.ab8500_gpadc* %187)
  %189 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %190 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %5, align 8
  %194 = call i32 @free_irq(i32 %192, %struct.ab8500_gpadc* %193)
  br label %195

195:                                              ; preds = %182, %81
  %196 = load i32, i32* %4, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %195, %154, %12
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.ab8500_gpadc* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_threaded_irq(i64, i32*, i32, i32, i8*, %struct.ab8500_gpadc*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ab8500_gpadc*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @ab8500_gpadc_read_calibration_data(%struct.ab8500_gpadc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.ab8500_gpadc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
