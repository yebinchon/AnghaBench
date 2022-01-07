; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_layer = type { %struct.TYPE_5__, %struct.vpbe_display*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.vpbe_display = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Trying to register VPBE display device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"layer=%p,layer->video_dev=%p\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_layer*, %struct.vpbe_display*, %struct.platform_device*)* @register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_device(%struct.vpbe_layer* %0, %struct.vpbe_display* %1, %struct.platform_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpbe_layer*, align 8
  %6 = alloca %struct.vpbe_display*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  store %struct.vpbe_layer* %0, %struct.vpbe_layer** %5, align 8
  store %struct.vpbe_display* %1, %struct.vpbe_display** %6, align 8
  store %struct.platform_device* %2, %struct.platform_device** %7, align 8
  %9 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %10 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %15 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %19 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %20 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.vpbe_layer* %18, %struct.TYPE_5__* %20)
  %22 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %23 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %22, i32 0, i32 2
  %24 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %25 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %28 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %27, i32 0, i32 0
  %29 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %30 = call i32 @video_register_device(%struct.TYPE_5__* %28, i32 %29, i32 -1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %38 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %39 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %38, i32 0, i32 1
  store %struct.vpbe_display* %37, %struct.vpbe_display** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.vpbe_display* %41)
  %43 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %44 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %43, i32 0, i32 0
  %45 = load %struct.vpbe_layer*, %struct.vpbe_layer** %5, align 8
  %46 = call i32 @video_set_drvdata(%struct.TYPE_5__* %44, %struct.vpbe_layer* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @v4l2_info(i32*, i8*, ...) #1

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vpbe_display*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.vpbe_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
