; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.tm6000_fh = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.tm6000_core* }
%struct.TYPE_4__ = type { i32 }
%struct.tm6000_core = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %12, %struct.tm6000_fh** %8, align 8
  %13 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %14 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %13, i32 0, i32 5
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %14, align 8
  store %struct.tm6000_core* %15, %struct.tm6000_core** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %16, %struct.tm6000_fh* %17, %struct.v4l2_format* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %69

24:                                               ; preds = %3
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @format_by_fourcc(i32 %29)
  %31 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %32 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %39 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %46 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %53 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %59 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %66 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %68 = call i32 @tm6000_set_fourcc_format(%struct.tm6000_core* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %24, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, %struct.tm6000_fh*, %struct.v4l2_format*) #1

declare dso_local i32 @format_by_fourcc(i32) #1

declare dso_local i32 @tm6000_set_fourcc_format(%struct.tm6000_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
