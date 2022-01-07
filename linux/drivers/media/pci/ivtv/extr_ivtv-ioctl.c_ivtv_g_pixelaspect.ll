; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @ivtv_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.ivtv_open_id*, align 8
  %11 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.ivtv_open_id* @fh2id(i8* %12)
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %10, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %10, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 0
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 54, i32 11
  %27 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 59, i32 10
  %35 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %62

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 54, i32 11
  %48 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 59, i32 10
  %56 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %37
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %20
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
