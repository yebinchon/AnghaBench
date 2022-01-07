; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.solo_enc_dev = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @solo_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.solo_enc_dev*, align 8
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %11)
  store %struct.solo_enc_dev* %12, %struct.solo_enc_dev** %8, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.v4l2_fract* %16, %struct.v4l2_fract** %9, align 8
  %17 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %18 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %23 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %22, i32 0, i32 1
  %24 = call i64 @vb2_is_streaming(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @calc_interval(i32 %30, i32 %33, i32 %36)
  %38 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %39 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %41 = call i32 @solo_update_mode(%struct.solo_enc_dev* %40)
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %45 = call i32 @solo_g_parm(%struct.file* %42, i8* %43, %struct.v4l2_streamparm* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

declare dso_local i32 @calc_interval(i32, i32, i32) #1

declare dso_local i32 @solo_update_mode(%struct.solo_enc_dev*) #1

declare dso_local i32 @solo_g_parm(%struct.file*, i8*, %struct.v4l2_streamparm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
