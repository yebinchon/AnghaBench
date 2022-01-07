; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_g_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_g_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cobalt_stream*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %9)
  store %struct.cobalt_stream* %10, %struct.cobalt_stream** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %8, align 8
  %14 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %15 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %25 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %33 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %38 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %43 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %48 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %53 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  ret i32 0
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
