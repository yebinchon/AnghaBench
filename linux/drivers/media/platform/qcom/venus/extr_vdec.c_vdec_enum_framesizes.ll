; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.venus_inst = type { i32 }
%struct.venus_format = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_STEPWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @vdec_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.venus_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.venus_inst* @to_inst(%struct.file* %10)
  store %struct.venus_inst* %11, %struct.venus_inst** %8, align 8
  %12 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %13 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %17 = call %struct.venus_format* @find_format(%struct.venus_inst* %12, i32 %15, i32 %16)
  store %struct.venus_format* %17, %struct.venus_format** %9, align 8
  %18 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %19 = icmp ne %struct.venus_format* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %3
  %21 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %22 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %26 = call %struct.venus_format* @find_format(%struct.venus_inst* %21, i32 %24, i32 %25)
  store %struct.venus_format* %26, %struct.venus_format** %9, align 8
  %27 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %28 = icmp ne %struct.venus_format* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load i32, i32* @V4L2_FRMSIZE_TYPE_STEPWISE, align 4
  %43 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %46 = call i32 @frame_width_min(%struct.venus_inst* %45)
  %47 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %51 = call i32 @frame_width_max(%struct.venus_inst* %50)
  %52 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 8
  %55 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %56 = call i32 @frame_width_step(%struct.venus_inst* %55)
  %57 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %61 = call i32 @frame_height_min(%struct.venus_inst* %60)
  %62 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %66 = call i32 @frame_height_max(%struct.venus_inst* %65)
  %67 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %71 = call i32 @frame_height_step(%struct.venus_inst* %70)
  %72 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %41, %38, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local %struct.venus_format* @find_format(%struct.venus_inst*, i32, i32) #1

declare dso_local i32 @frame_width_min(%struct.venus_inst*) #1

declare dso_local i32 @frame_width_max(%struct.venus_inst*) #1

declare dso_local i32 @frame_width_step(%struct.venus_inst*) #1

declare dso_local i32 @frame_height_min(%struct.venus_inst*) #1

declare dso_local i32 @frame_height_max(%struct.venus_inst*) #1

declare dso_local i32 @frame_height_step(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
