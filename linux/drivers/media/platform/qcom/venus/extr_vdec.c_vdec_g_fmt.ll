; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_g_fmt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vdec_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.venus_format*, align 8
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.venus_inst* @to_inst(%struct.file* %12)
  store %struct.venus_inst* %13, %struct.venus_inst** %8, align 8
  store %struct.venus_format* null, %struct.venus_format** %9, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %16, %struct.v4l2_pix_format_mplane** %10, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %24 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %23, i32 0, i32 9
  %25 = load %struct.venus_format*, %struct.venus_format** %24, align 8
  store %struct.venus_format* %25, %struct.venus_format** %9, align 8
  br label %37

26:                                               ; preds = %3
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 8
  %35 = load %struct.venus_format*, %struct.venus_format** %34, align 8
  store %struct.venus_format* %35, %struct.venus_format** %9, align 8
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %45 = call i32 @vdec_check_src_change(%struct.venus_inst* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %115

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %53 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %51
  %63 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %64 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %69 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %74 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %79 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %84 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %89 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %111

93:                                               ; preds = %51
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %101 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %106 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %93
  br label %111

111:                                              ; preds = %110, %62
  %112 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %113 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %114 = call i32 @vdec_try_fmt_common(%struct.venus_inst* %112, %struct.v4l2_format* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %48
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local i32 @vdec_check_src_change(%struct.venus_inst*) #1

declare dso_local i32 @vdec_try_fmt_common(%struct.venus_inst*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
