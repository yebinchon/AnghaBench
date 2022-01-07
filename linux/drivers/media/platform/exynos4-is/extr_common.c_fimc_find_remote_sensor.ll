; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_common.c_fimc_find_remote_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_common.c_fimc_find_remote_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.media_pad* }
%struct.media_pad = type { i32, i32 }
%struct.media_entity = type { %struct.media_pad* }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@GRP_ID_FIMC_IS_SENSOR = common dso_local global i64 0, align 8
@GRP_ID_SENSOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_subdev* @fimc_find_remote_sensor(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_pad*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  %6 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %7 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %6, i32 0, i32 0
  %8 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %9 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %8, i64 0
  store %struct.media_pad* %9, %struct.media_pad** %4, align 8
  br label %10

10:                                               ; preds = %47, %1
  %11 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %12 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %19 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %18)
  store %struct.media_pad* %19, %struct.media_pad** %4, align 8
  %20 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %21 = icmp ne %struct.media_pad* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %24 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_media_entity_v4l2_subdev(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %17
  br label %53

29:                                               ; preds = %22
  %30 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %31 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %32)
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %5, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GRP_ID_FIMC_IS_SENSOR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GRP_ID_SENSOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %29
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %2, align 8
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.media_pad*, %struct.media_pad** %50, align 8
  %52 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %51, i64 0
  store %struct.media_pad* %52, %struct.media_pad** %4, align 8
  br label %10

53:                                               ; preds = %28, %10
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %2, align 8
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  ret %struct.v4l2_subdev* %55
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
