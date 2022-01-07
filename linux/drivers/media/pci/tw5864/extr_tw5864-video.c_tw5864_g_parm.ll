; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tw5864_input = type { i32 }

@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @tw5864_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_streamparm*, align 8
  %7 = alloca %struct.tw5864_input*, align 8
  %8 = alloca %struct.v4l2_captureparm*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.tw5864_input* @video_drvdata(%struct.file* %10)
  store %struct.tw5864_input* %11, %struct.tw5864_input** %7, align 8
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.v4l2_captureparm* %14, %struct.v4l2_captureparm** %8, align 8
  %15 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %16 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %19 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %19, i32 0, i32 2
  %21 = call i32 @tw5864_frameinterval_get(%struct.tw5864_input* %18, %struct.TYPE_4__* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.tw5864_input*, %struct.tw5864_input** %7, align 8
  %23 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, %24
  store i32 %29, i32* %27, align 8
  %30 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tw5864_frameinterval_get(%struct.tw5864_input*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
