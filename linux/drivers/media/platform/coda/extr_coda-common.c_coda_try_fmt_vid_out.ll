; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.coda_ctx = type { %struct.coda_dev* }
%struct.coda_dev = type { i32 }
%struct.coda_q_data = type { i32 }
%struct.coda_codec = type { i32 }

@V4L2_COLORSPACE_DEFAULT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @coda_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_dev*, align 8
  %10 = alloca %struct.coda_q_data*, align 8
  %11 = alloca %struct.coda_codec*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.coda_ctx* @fh_to_ctx(i8* %13)
  store %struct.coda_ctx* %14, %struct.coda_ctx** %8, align 8
  %15 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %15, i32 0, i32 0
  %17 = load %struct.coda_dev*, %struct.coda_dev** %16, align 8
  store %struct.coda_dev* %17, %struct.coda_dev** %9, align 8
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = call i32 @coda_try_pixelformat(%struct.coda_ctx* %18, %struct.v4l2_format* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_COLORSPACE_DEFAULT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @coda_set_default_colorspace(%struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %40 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %41 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %39, i32 %40)
  store %struct.coda_q_data* %41, %struct.coda_q_data** %10, align 8
  %42 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.coda_q_data*, %struct.coda_q_data** %10, align 8
  %49 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.coda_codec* @coda_find_codec(%struct.coda_dev* %42, i32 %47, i32 %50)
  store %struct.coda_codec* %51, %struct.coda_codec** %11, align 8
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %53 = load %struct.coda_codec*, %struct.coda_codec** %11, align 8
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %55 = call i32 @coda_try_fmt(%struct.coda_ctx* %52, %struct.coda_codec* %53, %struct.v4l2_format* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %38, %23
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_try_pixelformat(%struct.coda_ctx*, %struct.v4l2_format*) #1

declare dso_local i32 @coda_set_default_colorspace(%struct.TYPE_4__*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local %struct.coda_codec* @coda_find_codec(%struct.coda_dev*, i32, i32) #1

declare dso_local i32 @coda_try_fmt(%struct.coda_ctx*, %struct.coda_codec*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
