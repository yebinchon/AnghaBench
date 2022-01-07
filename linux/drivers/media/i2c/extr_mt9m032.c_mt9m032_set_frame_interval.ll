; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_set_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_set_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt9m032 = type { i32, %struct.TYPE_2__, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @mt9m032_set_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_set_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.mt9m032*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev* %7)
  store %struct.mt9m032* %8, %struct.mt9m032** %5, align 8
  %9 = load %struct.mt9m032*, %struct.mt9m032** %5, align 8
  %10 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mt9m032*, %struct.mt9m032** %5, align 8
  %13 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.mt9m032*, %struct.mt9m032** %5, align 8
  %31 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %31, i32 0, i32 0
  %33 = call i32 @mt9m032_update_timing(%struct.mt9m032* %30, %struct.TYPE_2__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.mt9m032*, %struct.mt9m032** %5, align 8
  %38 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %37, i32 0, i32 1
  %39 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %39, i32 0, i32 0
  %41 = bitcast %struct.TYPE_2__* %38 to i8*
  %42 = bitcast %struct.TYPE_2__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43, %16
  %45 = load %struct.mt9m032*, %struct.mt9m032** %5, align 8
  %46 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.mt9m032* @to_mt9m032(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt9m032_update_timing(%struct.mt9m032*, %struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
