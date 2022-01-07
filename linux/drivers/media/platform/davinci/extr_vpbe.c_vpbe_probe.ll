; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.vpbe_config* }
%struct.vpbe_config = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.vpbe_device = type { i32, %struct.vpbe_config*, i32, %struct.TYPE_7__*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vpbe display module names not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vpbe_dev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vpbe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca %struct.vpbe_config*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.vpbe_config*, %struct.vpbe_config** %8, align 8
  %10 = icmp ne %struct.vpbe_config* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @v4l2_err(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.vpbe_config*, %struct.vpbe_config** %22, align 8
  store %struct.vpbe_config* %23, %struct.vpbe_config** %5, align 8
  %24 = load %struct.vpbe_config*, %struct.vpbe_config** %5, align 8
  %25 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %19
  %31 = load %struct.vpbe_config*, %struct.vpbe_config** %5, align 8
  %32 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.vpbe_config*, %struct.vpbe_config** %5, align 8
  %40 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38, %30, %19
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @v4l2_err(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %104

54:                                               ; preds = %38
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.vpbe_device* @kzalloc(i32 40, i32 %55)
  store %struct.vpbe_device* %56, %struct.vpbe_device** %4, align 8
  %57 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %58 = icmp ne %struct.vpbe_device* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %104

62:                                               ; preds = %54
  %63 = load %struct.vpbe_config*, %struct.vpbe_config** %5, align 8
  %64 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %65 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %64, i32 0, i32 1
  store %struct.vpbe_config* %63, %struct.vpbe_config** %65, align 8
  %66 = load i32, i32* @vpbe_dev_ops, align 4
  %67 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %68 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %72 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %71, i32 0, i32 3
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %72, align 8
  %73 = load %struct.vpbe_config*, %struct.vpbe_config** %5, align 8
  %74 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %62
  %80 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %81 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %80, i32 0, i32 1
  %82 = load %struct.vpbe_config*, %struct.vpbe_config** %81, align 8
  %83 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %91 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  br label %97

92:                                               ; preds = %62
  %93 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %94 = call i32 @kfree(%struct.vpbe_device* %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %104

97:                                               ; preds = %79
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.vpbe_device* %99)
  %101 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %102 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %101, i32 0, i32 0
  %103 = call i32 @mutex_init(i32* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %92, %59, %46, %11
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @v4l2_err(i32, i8*) #1

declare dso_local %struct.vpbe_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vpbe_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vpbe_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
