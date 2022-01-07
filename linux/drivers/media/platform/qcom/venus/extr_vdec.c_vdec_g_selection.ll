; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.venus_inst = type { i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vdec_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.venus_inst* @to_inst(%struct.file* %9)
  store %struct.venus_inst* %10, %struct.venus_inst** %8, align 8
  %11 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %105

25:                                               ; preds = %16, %3
  %26 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %95 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %29
    i32 133, label %51
    i32 131, label %51
    i32 132, label %73
    i32 134, label %73
  ]

29:                                               ; preds = %25, %25, %25
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %105

38:                                               ; preds = %29
  %39 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %40 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %46 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  br label %98

51:                                               ; preds = %25, %25
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %51
  %61 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %62 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %68 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  br label %98

73:                                               ; preds = %25, %25
  %74 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %105

82:                                               ; preds = %73
  %83 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %84 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %90 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  br label %98

95:                                               ; preds = %25
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %105

98:                                               ; preds = %82, %60, %38
  %99 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %95, %79, %57, %35, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
