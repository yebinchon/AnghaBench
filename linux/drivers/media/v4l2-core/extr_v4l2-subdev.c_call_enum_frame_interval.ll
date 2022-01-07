; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_call_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_call_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @call_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %8 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %9 = icmp ne %struct.v4l2_subdev_frame_interval_enum* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %57

13:                                               ; preds = %3
  %14 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @check_which(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %54

20:                                               ; preds = %13
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @check_pad(%struct.v4l2_subdev* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %33 = call i64 @check_cfg(i32 %31, %struct.v4l2_subdev_pad_config* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %50

36:                                               ; preds = %28
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)**
  %44 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)** %43, align 8
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %47 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %48 = call i32 %44(%struct.v4l2_subdev* %45, %struct.v4l2_subdev_pad_config* %46, %struct.v4l2_subdev_frame_interval_enum* %47)
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %36, %35
  %51 = phi i64 [ %33, %35 ], [ %49, %36 ]
  br label %52

52:                                               ; preds = %50, %27
  %53 = phi i64 [ %25, %27 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %19
  %55 = phi i64 [ %17, %19 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %10
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @check_which(i32) #1

declare dso_local i64 @check_pad(%struct.v4l2_subdev*, i32) #1

declare dso_local i64 @check_cfg(i32, %struct.v4l2_subdev_pad_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
