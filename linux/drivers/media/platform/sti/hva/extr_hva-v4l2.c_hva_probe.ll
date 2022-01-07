; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hva_dev = type { i32, i32, %struct.TYPE_2__*, i32, %struct.platform_device*, %struct.device* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s %s failed to register V4L2 device\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@HVA_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s %s failed to allocate work queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s %s registered as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hva_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hva_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hva_dev* @devm_kzalloc(%struct.device* %9, i32 40, i32 %10)
  store %struct.hva_dev* %11, %struct.hva_dev** %4, align 8
  %12 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %13 = icmp ne %struct.hva_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @DMA_BIT_MASK(i32 32)
  %20 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %17
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %28 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %27, i32 0, i32 5
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %31 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %30, i32 0, i32 4
  store %struct.platform_device* %29, %struct.platform_device** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %34 = call i32 @platform_set_drvdata(%struct.platform_device* %32, %struct.hva_dev* %33)
  %35 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %40 = call i32 @hva_hw_probe(%struct.platform_device* %38, %struct.hva_dev* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %104

44:                                               ; preds = %25
  %45 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %46 = call i32 @register_encoders(%struct.hva_dev* %45)
  %47 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %48 = call i32 @register_formats(%struct.hva_dev* %47)
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %51 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %50, i32 0, i32 0
  %52 = call i32 @v4l2_device_register(%struct.device* %49, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* @HVA_PREFIX, align 4
  %58 = load i32, i32* @HVA_NAME, align 4
  %59 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %101

60:                                               ; preds = %44
  %61 = load i32, i32* @HVA_NAME, align 4
  %62 = call i32 @create_workqueue(i32 %61)
  %63 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %64 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %66 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %60
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load i32, i32* @HVA_PREFIX, align 4
  %72 = load i32, i32* @HVA_NAME, align 4
  %73 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %97

76:                                               ; preds = %60
  %77 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %78 = call i32 @hva_register_device(%struct.hva_dev* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %92

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* @HVA_PREFIX, align 4
  %85 = load i32, i32* @HVA_NAME, align 4
  %86 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %87 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, i32 %90)
  store i32 0, i32* %2, align 4
  br label %106

92:                                               ; preds = %81
  %93 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %94 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @destroy_workqueue(i32 %95)
  br label %97

97:                                               ; preds = %92, %69
  %98 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %99 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %98, i32 0, i32 0
  %100 = call i32 @v4l2_device_unregister(i32* %99)
  br label %101

101:                                              ; preds = %97, %55
  %102 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %103 = call i32 @hva_hw_remove(%struct.hva_dev* %102)
  br label %104

104:                                              ; preds = %101, %43, %14
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %82, %23
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.hva_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hva_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hva_hw_probe(%struct.platform_device*, %struct.hva_dev*) #1

declare dso_local i32 @register_encoders(%struct.hva_dev*) #1

declare dso_local i32 @register_formats(%struct.hva_dev*) #1

declare dso_local i32 @v4l2_device_register(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @create_workqueue(i32) #1

declare dso_local i32 @hva_register_device(%struct.hva_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @hva_hw_remove(%struct.hva_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
