; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_enum_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_enum_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i64, i64, i64, i64, i64 }
%struct.ov7670_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ov7670_win_size* }
%struct.ov7670_win_size = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_size_enum*)* @ov7670_enum_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_enum_frame_size(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_size_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_size_enum*, align 8
  %8 = alloca %struct.ov7670_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ov7670_win_size*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_size_enum* %2, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %14)
  store %struct.ov7670_info* %15, %struct.ov7670_info** %8, align 8
  store i32 -1, i32* %10, align 4
  %16 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %20 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %99

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %93, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %32
  %37 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %38 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %41, i64 %43
  store %struct.ov7670_win_size* %44, %struct.ov7670_win_size** %13, align 8
  %45 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %46 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %13, align 8
  %51 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %54 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %93

58:                                               ; preds = %49, %36
  %59 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %60 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %13, align 8
  %65 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %68 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %93

72:                                               ; preds = %63, %58
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %13, align 8
  %79 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %83, i32 0, i32 1
  store i64 %80, i64* %84, align 8
  %85 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %13, align 8
  %86 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load %struct.v4l2_subdev_frame_size_enum*, %struct.v4l2_subdev_frame_size_enum** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, %struct.v4l2_subdev_frame_size_enum* %90, i32 0, i32 3
  store i64 %87, i64* %91, align 8
  store i32 0, i32* %4, align 4
  br label %99

92:                                               ; preds = %72
  br label %93

93:                                               ; preds = %92, %71, %57
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %32

96:                                               ; preds = %32
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %77, %28
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
