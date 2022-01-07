; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }

@mt9v111_frame_intervals = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@mt9v111_frame_sizes = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @mt9v111_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %9 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_intervals, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %17)
  %19 = icmp uge i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_sizes, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_sizes, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_sizes, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %24

56:                                               ; preds = %51, %24
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_sizes, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %56
  %65 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mt9v111_frame_intervals, align 8
  %72 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %75
  %77 = bitcast %struct.TYPE_6__* %70 to i8*
  %78 = bitcast %struct.TYPE_6__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %64, %61, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
