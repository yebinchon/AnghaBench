; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.video_device = type { i32, i32*, i32, i32*, i32*, i32 (%struct.video_device*)*, i32 }
%struct.venus_core = type { %struct.device*, %struct.video_device*, i32, i8*, i8* }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"qcom-venus-decoder\00", align 1
@vdec_fops = common dso_local global i32 0, align 4
@vdec_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vdec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.venus_core*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.venus_core* @dev_get_drvdata(i32 %20)
  store %struct.venus_core* %21, %struct.venus_core** %6, align 8
  %22 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %23 = icmp ne %struct.venus_core* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %126

27:                                               ; preds = %17
  %28 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %29 = call i64 @IS_V3(%struct.venus_core* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %33 = call i64 @IS_V4(%struct.venus_core* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31, %27
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i8* @devm_clk_get(%struct.device* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %39 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %41 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %47 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %2, align 4
  br label %126

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %53 = call i64 @IS_V4(%struct.venus_core* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i8* @devm_clk_get(%struct.device* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %59 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %61 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %67 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %126

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.venus_core* %73)
  %75 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %75, %struct.video_device** %5, align 8
  %76 = load %struct.video_device*, %struct.video_device** %5, align 8
  %77 = icmp ne %struct.video_device* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %126

81:                                               ; preds = %71
  %82 = load %struct.video_device*, %struct.video_device** %5, align 8
  %83 = getelementptr inbounds %struct.video_device, %struct.video_device* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @strscpy(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %86 = load %struct.video_device*, %struct.video_device** %5, align 8
  %87 = getelementptr inbounds %struct.video_device, %struct.video_device* %86, i32 0, i32 5
  store i32 (%struct.video_device*)* @video_device_release, i32 (%struct.video_device*)** %87, align 8
  %88 = load %struct.video_device*, %struct.video_device** %5, align 8
  %89 = getelementptr inbounds %struct.video_device, %struct.video_device* %88, i32 0, i32 4
  store i32* @vdec_fops, i32** %89, align 8
  %90 = load %struct.video_device*, %struct.video_device** %5, align 8
  %91 = getelementptr inbounds %struct.video_device, %struct.video_device* %90, i32 0, i32 3
  store i32* @vdec_ioctl_ops, i32** %91, align 8
  %92 = load i32, i32* @VFL_DIR_M2M, align 4
  %93 = load %struct.video_device*, %struct.video_device** %5, align 8
  %94 = getelementptr inbounds %struct.video_device, %struct.video_device* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %96 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %95, i32 0, i32 2
  %97 = load %struct.video_device*, %struct.video_device** %5, align 8
  %98 = getelementptr inbounds %struct.video_device, %struct.video_device* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %100 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.video_device*, %struct.video_device** %5, align 8
  %103 = getelementptr inbounds %struct.video_device, %struct.video_device* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.video_device*, %struct.video_device** %5, align 8
  %105 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %106 = call i32 @video_register_device(%struct.video_device* %104, i32 %105, i32 -1)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %122

110:                                              ; preds = %81
  %111 = load %struct.video_device*, %struct.video_device** %5, align 8
  %112 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %113 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %112, i32 0, i32 1
  store %struct.video_device* %111, %struct.video_device** %113, align 8
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %116 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %115, i32 0, i32 0
  store %struct.device* %114, %struct.device** %116, align 8
  %117 = load %struct.video_device*, %struct.video_device** %5, align 8
  %118 = load %struct.venus_core*, %struct.venus_core** %6, align 8
  %119 = call i32 @video_set_drvdata(%struct.video_device* %117, %struct.venus_core* %118)
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @pm_runtime_enable(%struct.device* %120)
  store i32 0, i32* %2, align 4
  br label %126

122:                                              ; preds = %109
  %123 = load %struct.video_device*, %struct.video_device** %5, align 8
  %124 = call i32 @video_device_release(%struct.video_device* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %110, %78, %65, %45, %24, %14
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.venus_core* @dev_get_drvdata(i32) #1

declare dso_local i64 @IS_V3(%struct.venus_core*) #1

declare dso_local i64 @IS_V4(%struct.venus_core*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.venus_core*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.venus_core*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
