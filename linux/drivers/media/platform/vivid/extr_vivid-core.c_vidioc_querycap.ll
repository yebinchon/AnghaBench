; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"vivid\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.vivid_dev* @video_drvdata(%struct.file* %8)
  store %struct.vivid_dev* %9, %struct.vivid_dev** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strscpy(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strscpy(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %28, %31
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %32, %35
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %48, %51
  %53 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
