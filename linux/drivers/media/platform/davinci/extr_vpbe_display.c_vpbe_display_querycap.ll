; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.vpbe_layer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vpbe_display_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.vpbe_layer*, align 8
  %8 = alloca %struct.vpbe_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %9)
  store %struct.vpbe_layer* %10, %struct.vpbe_layer** %7, align 8
  %11 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %12 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.vpbe_device*, %struct.vpbe_device** %14, align 8
  store %struct.vpbe_device* %15, %struct.vpbe_device** %8, align 8
  %16 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  %20 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @dev_name(i32 %21)
  %23 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  %28 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @dev_name(i32 %29)
  %31 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vpbe_device*, %struct.vpbe_device** %8, align 8
  %36 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strscpy(i32 %34, i32 %39, i32 4)
  ret i32 0
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
