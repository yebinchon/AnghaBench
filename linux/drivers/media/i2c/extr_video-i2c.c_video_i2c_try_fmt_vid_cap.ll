; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.video_i2c_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.v4l2_frmsize_discrete* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @video_i2c_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_i2c_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.video_i2c_data*, align 8
  %8 = alloca %struct.v4l2_frmsize_discrete*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.video_i2c_data* @video_drvdata(%struct.file* %11)
  store %struct.video_i2c_data* %12, %struct.video_i2c_data** %7, align 8
  %13 = load %struct.video_i2c_data*, %struct.video_i2c_data** %7, align 8
  %14 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %16, align 8
  store %struct.v4l2_frmsize_discrete* %17, %struct.v4l2_frmsize_discrete** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format* %20, %struct.v4l2_pix_format** %9, align 8
  %21 = load %struct.video_i2c_data*, %struct.video_i2c_data** %7, align 8
  %22 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.video_i2c_data*, %struct.video_i2c_data** %7, align 8
  %38 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul i32 %51, %52
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %58, %61
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @V4L2_COLORSPACE_RAW, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local %struct.video_i2c_data* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
