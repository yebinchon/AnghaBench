; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i8* }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i8* }
%struct.vicodec_ctx = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }

@multiplanar = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vicodec_ctx*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vicodec_ctx* @file2ctx(%struct.file* %11)
  store %struct.vicodec_ctx* %12, %struct.vicodec_ctx** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %120 [
    i32 129, label %16
    i32 128, label %69
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @multiplanar, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %127

22:                                               ; preds = %16
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.v4l2_pix_format* %25, %struct.v4l2_pix_format** %10, align 8
  %26 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i8*, i8** @V4L2_PIX_FMT_FWHT, align 8
  br label %41

32:                                               ; preds = %22
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call %struct.TYPE_6__* @find_fmt(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %32, %30
  %42 = phi i8* [ %31, %30 ], [ %40, %32 ]
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %123

69:                                               ; preds = %3
  %70 = load i32, i32* @multiplanar, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %127

75:                                               ; preds = %69
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %78, %struct.v4l2_pix_format_mplane** %9, align 8
  %79 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i8*, i8** @V4L2_PIX_FMT_FWHT, align 8
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.TYPE_6__* @find_fmt(i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %92

92:                                               ; preds = %85, %83
  %93 = phi i8* [ %84, %83 ], [ %91, %85 ]
  %94 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %115 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %123

120:                                              ; preds = %3
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %127

123:                                              ; preds = %92, %41
  %124 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %125 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %126 = call i32 @vidioc_try_fmt(%struct.vicodec_ctx* %124, %struct.v4l2_format* %125)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %120, %72, %19
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.TYPE_6__* @find_fmt(i8*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.vicodec_ctx*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
