; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_vbi_format }
%struct.v4l2_vbi_format = type { i32, i32, i64*, i64, i32*, i32*, i32, i64 }
%struct.cx18 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.cx18* }

@VBI_ACTIVE_SAMPLES = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_g_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca %struct.v4l2_vbi_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.TYPE_6__* @fh2id(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.cx18*, %struct.cx18** %11, align 8
  store %struct.cx18* %12, %struct.cx18** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_vbi_format* %15, %struct.v4l2_vbi_format** %8, align 8
  %16 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %16, i32 0, i32 0
  store i32 27000000, i32* %17, align 8
  %18 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %19 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %18, i32 0, i32 1
  store i32 248, i32* %19, align 4
  %20 = load i64, i64* @VBI_ACTIVE_SAMPLES, align 8
  %21 = sub nsw i64 %20, 4
  %22 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %22, i32 0, i32 7
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %25 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cx18*, %struct.cx18** %7, align 8
  %28 = getelementptr inbounds %struct.cx18, %struct.cx18* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.cx18*, %struct.cx18** %7, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.cx18*, %struct.cx18** %7, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %50, i32* %58, align 4
  %59 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  store i64 0, i64* %68, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
