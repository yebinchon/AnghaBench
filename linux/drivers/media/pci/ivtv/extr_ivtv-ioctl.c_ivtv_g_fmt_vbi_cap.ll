; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_vbi_format }
%struct.v4l2_vbi_format = type { i32, i32, i64*, i64, i32*, i32*, i32, i64 }
%struct.ivtv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.ivtv* }

@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca %struct.v4l2_vbi_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.TYPE_6__* @fh2id(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %7, align 8
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
  %20 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 4
  %25 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %25, i32 0, i32 7
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %28 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %37 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %53, i32* %61, align 4
  %62 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %69 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  store i64 0, i64* %71, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
