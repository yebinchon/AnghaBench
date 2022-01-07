; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_sliced_vbi_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_sliced_vbi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_sliced_vbi_format }
%struct.v4l2_sliced_vbi_format = type { i32, i32, i8***, i64* }
%struct.ivtv = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.ivtv* }

@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i8* null, align 8
@V4L2_SLICED_WSS_625 = common dso_local global i8* null, align 8
@V4L2_SLICED_VPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_sliced_vbi_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_sliced_vbi_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.TYPE_4__* @fh2id(i8* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  store %struct.ivtv* %13, %struct.ivtv** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.v4l2_sliced_vbi_format* %16, %struct.v4l2_sliced_vbi_format** %9, align 8
  %17 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %3
  %35 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %35, i32 0, i32 0
  store i32 144, i32* %36, align 8
  %37 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %37, i32 0, i32 2
  %39 = load i8***, i8**** %38, align 8
  %40 = call i32 @memset(i8*** %39, i32 0, i32 8)
  %41 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = load i8*, i8** @V4L2_SLICED_CAPTION_525, align 8
  %47 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %47, i32 0, i32 2
  %49 = load i8***, i8**** %48, align 8
  %50 = getelementptr inbounds i8**, i8*** %49, i64 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 21
  store i8* %46, i8** %52, align 8
  %53 = load i8*, i8** @V4L2_SLICED_CAPTION_525, align 8
  %54 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %54, i32 0, i32 2
  %56 = load i8***, i8**** %55, align 8
  %57 = getelementptr inbounds i8**, i8*** %56, i64 1
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 21
  store i8* %53, i8** %59, align 8
  br label %75

60:                                               ; preds = %34
  %61 = load i8*, i8** @V4L2_SLICED_WSS_625, align 8
  %62 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %62, i32 0, i32 2
  %64 = load i8***, i8**** %63, align 8
  %65 = getelementptr inbounds i8**, i8*** %64, i64 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 23
  store i8* %61, i8** %67, align 8
  %68 = load i8*, i8** @V4L2_SLICED_VPS, align 8
  %69 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %70 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %69, i32 0, i32 2
  %71 = load i8***, i8**** %70, align 8
  %72 = getelementptr inbounds i8**, i8*** %71, i64 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 16
  store i8* %68, i8** %74, align 8
  br label %75

75:                                               ; preds = %60, %45
  %76 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %77 = call i32 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format* %76)
  %78 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_4__* @fh2id(i8*) #1

declare dso_local i32 @memset(i8***, i32, i32) #1

declare dso_local i32 @ivtv_get_service_set(%struct.v4l2_sliced_vbi_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
