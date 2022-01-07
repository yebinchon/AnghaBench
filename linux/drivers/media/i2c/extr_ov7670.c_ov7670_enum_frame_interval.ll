; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i64, i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ov7670_info = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ov7670_win_size* }
%struct.ov7670_win_size = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ov7670_frame_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @ov7670_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca %struct.ov7670_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ov7670_win_size*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %12)
  store %struct.ov7670_info* %13, %struct.ov7670_info** %8, align 8
  %14 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %15 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32*, i32** @ov7670_frame_rates, align 8
  %31 = call i64 @ARRAY_SIZE(i32* %30)
  %32 = icmp uge i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %118

36:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %95, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  %42 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %43 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %46, i64 %48
  store %struct.ov7670_win_size* %49, %struct.ov7670_win_size** %11, align 8
  %50 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %51 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %56 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %59 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %95

63:                                               ; preds = %54, %41
  %64 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %65 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %70 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %73 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %95

77:                                               ; preds = %68, %63
  %78 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %82 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %11, align 8
  %90 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %98

94:                                               ; preds = %85, %77
  br label %95

95:                                               ; preds = %94, %76, %62
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %37

98:                                               ; preds = %93, %37
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %118

105:                                              ; preds = %98
  %106 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i32*, i32** @ov7670_frame_rates, align 8
  %110 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %105, %102, %33, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
