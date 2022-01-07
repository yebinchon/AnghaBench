; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_YUYV = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB24 = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %10)
  store %struct.cobalt_stream* %11, %struct.cobalt_stream** %8, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %9, align 8
  %15 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %16 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %15, i32 0, i32 5
  %17 = call i64 @vb2_is_busy(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = call i64 @cobalt_try_fmt_vid_cap(%struct.file* %23, i8* %24, %struct.v4l2_format* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %36 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %41 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %46 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %62 [
    i32 128, label %50
    i32 129, label %54
    i32 130, label %58
  ]

50:                                               ; preds = %31
  %51 = load i32, i32* @COBALT_BYTES_PER_PIXEL_YUYV, align 4
  %52 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %53 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %65

54:                                               ; preds = %31
  %55 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB24, align 4
  %56 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %57 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %65

58:                                               ; preds = %31
  %59 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB32, align 4
  %60 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %61 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %31
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %58, %54, %50
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %70 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %72 = call i32 @cobalt_enable_input(%struct.cobalt_stream* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %62, %28, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i64 @cobalt_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @cobalt_enable_input(%struct.cobalt_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
