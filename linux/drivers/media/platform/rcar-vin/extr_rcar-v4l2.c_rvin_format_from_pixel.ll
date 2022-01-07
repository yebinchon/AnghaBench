; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_from_pixel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_format_from_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_video_format = type { i64 }
%struct.rvin_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RCAR_M1 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_XBGR32 = common dso_local global i64 0, align 8
@rvin_formats = common dso_local global %struct.rvin_video_format* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rvin_video_format*, align 8
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RCAR_M1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @V4L2_PIX_FMT_XBGR32, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.rvin_video_format* null, %struct.rvin_video_format** %3, align 8
  br label %44

19:                                               ; preds = %14, %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rvin_video_format*, %struct.rvin_video_format** @rvin_formats, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.rvin_video_format* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.rvin_video_format*, %struct.rvin_video_format** @rvin_formats, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %26, i64 %28
  %30 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.rvin_video_format*, %struct.rvin_video_format** @rvin_formats, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %35, i64 %37
  store %struct.rvin_video_format* %38, %struct.rvin_video_format** %3, align 8
  br label %44

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %20

43:                                               ; preds = %20
  store %struct.rvin_video_format* null, %struct.rvin_video_format** %3, align 8
  br label %44

44:                                               ; preds = %43, %34, %18
  %45 = load %struct.rvin_video_format*, %struct.rvin_video_format** %3, align 8
  ret %struct.rvin_video_format* %45
}

declare dso_local i32 @ARRAY_SIZE(%struct.rvin_video_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
