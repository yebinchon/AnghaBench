; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_register_platform_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_register_platform_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"deferring %s device registration\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s device registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.platform_device*, i32)* @fimc_md_register_platform_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_md_register_platform_entity(%struct.fimc_md* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca %struct.fimc_md*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load i32, i32* @EPROBE_DEFER, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call i32 @device_lock(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @try_module_get(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20, %3
  br label %64

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call i8* @dev_get_drvdata(%struct.device* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %53 [
    i32 130, label %36
    i32 129, label %40
    i32 131, label %44
    i32 128, label %49
  ]

36:                                               ; preds = %34
  %37 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @register_fimc_entity(%struct.fimc_md* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  br label %56

40:                                               ; preds = %34
  %41 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @register_fimc_lite_entity(%struct.fimc_md* %41, i8* %42)
  store i32 %43, i32* %8, align 4
  br label %56

44:                                               ; preds = %34
  %45 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @register_csis_entity(%struct.fimc_md* %45, %struct.platform_device* %46, i8* %47)
  store i32 %48, i32* %8, align 4
  br label %56

49:                                               ; preds = %34
  %50 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @register_fimc_is_entity(%struct.fimc_md* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %34
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %49, %44, %40, %36
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @module_put(i32 %62)
  br label %64

64:                                               ; preds = %57, %28
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = call i32 @device_unlock(%struct.device* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @EPROBE_DEFER, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %73 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 @dev_name(%struct.device* %76)
  %78 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %92

79:                                               ; preds = %64
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %84 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.device*, %struct.device** %7, align 8
  %88 = call i32 @dev_name(%struct.device* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %79
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @register_fimc_entity(%struct.fimc_md*, i8*) #1

declare dso_local i32 @register_fimc_lite_entity(%struct.fimc_md*, i8*) #1

declare dso_local i32 @register_csis_entity(%struct.fimc_md*, %struct.platform_device*, i8*) #1

declare dso_local i32 @register_fimc_is_entity(%struct.fimc_md*, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
