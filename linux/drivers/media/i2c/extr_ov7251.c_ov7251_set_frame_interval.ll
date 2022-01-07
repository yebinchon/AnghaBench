; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32 }
%struct.ov7251 = type { i32, %struct.ov7251_mode_info*, i32, i32, i32, i32 }
%struct.ov7251_mode_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @ov7251_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_set_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.ov7251*, align 8
  %6 = alloca %struct.ov7251_mode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ov7251* @to_ov7251(%struct.v4l2_subdev* %8)
  store %struct.ov7251* %9, %struct.ov7251** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %11 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %14 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %14, i32 0, i32 0
  %16 = call %struct.ov7251_mode_info* @ov7251_find_mode_by_ival(%struct.ov7251* %13, i32* %15)
  store %struct.ov7251_mode_info* %16, %struct.ov7251_mode_info** %6, align 8
  %17 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %18 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %19 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %18, i32 0, i32 1
  %20 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %19, align 8
  %21 = icmp ne %struct.ov7251_mode_info* %17, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %2
  %23 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %24 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__v4l2_ctrl_s_ctrl_int64(i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %89

33:                                               ; preds = %22
  %34 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %35 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %38 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__v4l2_ctrl_s_ctrl(i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %89

44:                                               ; preds = %33
  %45 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %46 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %49 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %52 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__v4l2_ctrl_modify_range(i32 %47, i32 1, i32 %50, i32 1, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %89

58:                                               ; preds = %44
  %59 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %60 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %63 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__v4l2_ctrl_s_ctrl(i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %89

69:                                               ; preds = %58
  %70 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %71 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @__v4l2_ctrl_s_ctrl(i32 %72, i32 16)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %89

77:                                               ; preds = %69
  %78 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %6, align 8
  %79 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %80 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %79, i32 0, i32 1
  store %struct.ov7251_mode_info* %78, %struct.ov7251_mode_info** %80, align 8
  br label %81

81:                                               ; preds = %77, %2
  %82 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %83 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %82, i32 0, i32 1
  %84 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %83, align 8
  %85 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %76, %68, %57, %43, %32
  %90 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %91 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.ov7251* @to_ov7251(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ov7251_mode_info* @ov7251_find_mode_by_ival(%struct.ov7251*, i32*) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl_int64(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_modify_range(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
