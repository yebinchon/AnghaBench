; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.solo_enc_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @solo_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_streamparm*, align 8
  %7 = alloca %struct.solo_enc_dev*, align 8
  %8 = alloca %struct.v4l2_captureparm*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %9)
  store %struct.solo_enc_dev* %10, %struct.solo_enc_dev** %7, align 8
  %11 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.v4l2_captureparm* %13, %struct.v4l2_captureparm** %8, align 8
  %14 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %15 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %18 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %24 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  ret i32 0
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
