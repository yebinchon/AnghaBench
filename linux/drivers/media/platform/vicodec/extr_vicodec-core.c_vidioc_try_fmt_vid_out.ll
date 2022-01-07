; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format }
%struct.v4l2_pix_format_mplane = type { i8*, i8* }
%struct.v4l2_pix_format = type { i8*, i8* }
%struct.vicodec_ctx = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@multiplanar = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT_STATELESS = common dso_local global i8* null, align 8
@V4L2_PIX_FMT_FWHT = common dso_local global i8* null, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
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
  switch i32 %15, label %110 [
    i32 129, label %16
    i32 128, label %63
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @multiplanar, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %117

22:                                               ; preds = %16
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.v4l2_pix_format* %25, %struct.v4l2_pix_format** %10, align 8
  %26 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call %struct.TYPE_4__* @find_fmt(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %53

39:                                               ; preds = %22
  %40 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** @V4L2_PIX_FMT_FWHT_STATELESS, align 8
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load i8*, i8** @V4L2_PIX_FMT_FWHT, align 8
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  br label %113

63:                                               ; preds = %3
  %64 = load i32, i32* @multiplanar, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %117

69:                                               ; preds = %63
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %72, %struct.v4l2_pix_format_mplane** %9, align 8
  %73 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call %struct.TYPE_4__* @find_fmt(i8* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %100

86:                                               ; preds = %69
  %87 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i8*, i8** @V4L2_PIX_FMT_FWHT_STATELESS, align 8
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %99

95:                                               ; preds = %86
  %96 = load i8*, i8** @V4L2_PIX_FMT_FWHT, align 8
  %97 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** @V4L2_COLORSPACE_REC709, align 8
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  br label %113

110:                                              ; preds = %3
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %117

113:                                              ; preds = %109, %62
  %114 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %116 = call i32 @vidioc_try_fmt(%struct.vicodec_ctx* %114, %struct.v4l2_format* %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %110, %66, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.TYPE_4__* @find_fmt(i8*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.vicodec_ctx*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
