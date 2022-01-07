; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }

@COBALT_BYTES_PER_PIXEL_YUYV = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB32 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.v4l2_pix_format* %10, %struct.v4l2_pix_format** %7, align 8
  %11 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 176
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 144
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %3
  %21 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %21, i32 0, i32 0
  store i32 176, i32* %22, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 1
  store i32 144, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1920
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1080
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %25
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 0
  store i32 1920, i32* %37, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  store i32 1080, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -4
  store i32 %44, i32* %42, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, -2
  store i32 %48, i32* %46, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %53 [
    i32 128, label %52
    i32 129, label %69
  ]

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %40, %52
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @COBALT_BYTES_PER_PIXEL_YUYV, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i8* @max(i32 %57, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 2
  store i32 128, i32* %68, align 4
  br label %83

69:                                               ; preds = %40
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -4
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB32, align 4
  %78 = mul nsw i32 %76, %77
  %79 = call i8* @max(i32 %73, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %69, %53
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  ret i32 0
}

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
