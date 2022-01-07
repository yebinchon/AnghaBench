; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_initialize_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_initialize_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.vpfe_device = type { i64, i32, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 (i32)* }

@vpfe_standards = common dso_local global %struct.TYPE_7__* null, align 8
@ccdc_lock = common dso_local global i32 0, align 4
@ccdc_dev = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"ccdc device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't lock ccdc module\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_initialize_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_initialize_device(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %5 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %6 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %9, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = call i32 @mutex_lock(i32* @ccdc_lock)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccdc_dev, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %28 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %27, i32 0, i32 4
  %29 = call i32 @v4l2_err(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %73

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccdc_dev, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @try_module_get(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %40 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %39, i32 0, i32 4
  %41 = call i32 @v4l2_err(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %32
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccdc_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %44
  %59 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %60 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %67 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = call i32 %70(i32 -1)
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %38, %26
  %74 = call i32 @mutex_unlock(i32* @ccdc_lock)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %20
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
