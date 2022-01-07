; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.delta_dev = type { i32, i32, %struct.TYPE_2__*, %struct.device*, i32*, i32*, i32*, i32, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s can't get delta clock\0A\00", align 1
@DELTA_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"delta-st231\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s can't get delta-st231 clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"delta-flash-promip\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s can't get delta-flash-promip clock\0A\00", align 1
@DELTA_HW_AUTOSUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"%s failed to initialize firmware ipc channel\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s failed to register V4L2 device\0A\00", align 1
@DELTA_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"%s failed to allocate work queue\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s %s registered as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @delta_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.delta_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.delta_dev* @devm_kzalloc(%struct.device* %9, i32 64, i32 %10)
  store %struct.delta_dev* %11, %struct.delta_dev** %4, align 8
  %12 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %13 = icmp ne %struct.delta_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %163

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %20 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %19, i32 0, i32 3
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %23 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %22, i32 0, i32 8
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.delta_dev* %25)
  %27 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %28 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %27, i32 0, i32 7
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i8* @devm_clk_get(%struct.device* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %34 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %36 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %17
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* @DELTA_PREFIX, align 4
  %43 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %45 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %44, i32 0, i32 6
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %40, %17
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i8* @devm_clk_get(%struct.device* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %51 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %50, i32 0, i32 5
  store i32* %49, i32** %51, align 8
  %52 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %53 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* @DELTA_PREFIX, align 4
  %60 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %62 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %61, i32 0, i32 5
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %57, %46
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i8* @devm_clk_get(%struct.device* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %68 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %70 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* @DELTA_PREFIX, align 4
  %77 = call i32 @dev_dbg(%struct.device* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %79 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %74, %63
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load i32, i32* @DELTA_HW_AUTOSUSPEND_DELAY_MS, align 4
  %83 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @pm_runtime_use_autosuspend(%struct.device* %84)
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @pm_runtime_set_suspended(%struct.device* %86)
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @pm_runtime_enable(%struct.device* %88)
  %90 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %91 = call i32 @delta_ipc_init(%struct.delta_dev* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %96 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %95, i32 0, i32 3
  %97 = load %struct.device*, %struct.device** %96, align 8
  %98 = load i32, i32* @DELTA_PREFIX, align 4
  %99 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %163

100:                                              ; preds = %80
  %101 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %102 = call i32 @register_decoders(%struct.delta_dev* %101)
  %103 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %104 = call i32 @register_formats(%struct.delta_dev* %103)
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %107 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %106, i32 0, i32 0
  %108 = call i32 @v4l2_device_register(%struct.device* %105, i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %113 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %112, i32 0, i32 3
  %114 = load %struct.device*, %struct.device** %113, align 8
  %115 = load i32, i32* @DELTA_PREFIX, align 4
  %116 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  br label %163

117:                                              ; preds = %100
  %118 = load i32, i32* @DELTA_NAME, align 4
  %119 = call i32 @create_workqueue(i32 %118)
  %120 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %121 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %123 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %117
  %127 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %128 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %127, i32 0, i32 3
  %129 = load %struct.device*, %struct.device** %128, align 8
  %130 = load i32, i32* @DELTA_PREFIX, align 4
  %131 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %159

134:                                              ; preds = %117
  %135 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %136 = call i32 @delta_register_device(%struct.delta_dev* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %154

140:                                              ; preds = %134
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = load i32, i32* @DELTA_PREFIX, align 4
  %143 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %144 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %149 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %148, i32 0, i32 2
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_info(%struct.device* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %142, i32 %147, i32 %152)
  store i32 0, i32* %2, align 4
  br label %165

154:                                              ; preds = %139
  %155 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %156 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @destroy_workqueue(i32 %157)
  br label %159

159:                                              ; preds = %154, %126
  %160 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %161 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %160, i32 0, i32 0
  %162 = call i32 @v4l2_device_unregister(i32* %161)
  br label %163

163:                                              ; preds = %159, %111, %94, %14
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %140
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.delta_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.delta_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @delta_ipc_init(%struct.delta_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @register_decoders(%struct.delta_dev*) #1

declare dso_local i32 @register_formats(%struct.delta_dev*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local i32 @create_workqueue(i32) #1

declare dso_local i32 @delta_register_device(%struct.delta_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
