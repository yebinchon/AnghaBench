; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_YUV_MODE_MASK = common dso_local global i32 0, align 4
@IVTV_YUV_SYNC_MASK = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_BT = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_TB = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_HM12 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.ivtv_open_id* @fh2id(i8* %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %8, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 1
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.v4l2_pix_format* %18, %struct.v4l2_pix_format** %10, align 8
  %19 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %3
  %29 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %48 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %109

52:                                               ; preds = %28
  %53 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IVTV_YUV_MODE_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %79 [
    i32 129, label %59
    i32 128, label %75
  ]

59:                                               ; preds = %52
  %60 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IVTV_YUV_SYNC_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @V4L2_FIELD_INTERLACED_BT, align 4
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @V4L2_FIELD_INTERLACED_TB, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  br label %83

75:                                               ; preds = %52
  %76 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %52
  %80 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load i32, i32* @V4L2_PIX_FMT_HM12, align 4
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 1
  store i32 720, i32* %88, align 4
  %89 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %90 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 31
  %105 = and i32 %104, -32
  %106 = mul nsw i32 1080, %105
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %117

109:                                              ; preds = %28
  %110 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %114 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %113, i32 0, i32 2
  store i32 131072, i32* %114, align 4
  %115 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %83
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %25
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
