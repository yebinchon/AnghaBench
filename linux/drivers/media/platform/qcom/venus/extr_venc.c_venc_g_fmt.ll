; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.venus_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.venus_format*, %struct.venus_format* }
%struct.venus_format = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @venc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.venus_inst*, align 8
  %10 = alloca %struct.venus_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %13, %struct.v4l2_pix_format_mplane** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.venus_inst* @to_inst(%struct.file* %14)
  store %struct.venus_inst* %15, %struct.venus_inst** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %23 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %22, i32 0, i32 9
  %24 = load %struct.venus_format*, %struct.venus_format** %23, align 8
  store %struct.venus_format* %24, %struct.venus_format** %10, align 8
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 8
  %34 = load %struct.venus_format*, %struct.venus_format** %33, align 8
  store %struct.venus_format* %34, %struct.venus_format** %10, align 8
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %103

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.venus_format*, %struct.venus_format** %10, align 8
  %41 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %39
  %51 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %52 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %57 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %62 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %67 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %72 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %77 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %99

81:                                               ; preds = %39
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %89 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %94 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %81
  br label %99

99:                                               ; preds = %98, %50
  %100 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %102 = call i32 @venc_try_fmt_common(%struct.venus_inst* %100, %struct.v4l2_format* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %35
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local i32 @venc_try_fmt_common(%struct.venus_inst*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
