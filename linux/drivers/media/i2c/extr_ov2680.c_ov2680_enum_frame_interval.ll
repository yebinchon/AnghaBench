; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i64, i64, i64, i64, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }

@OV2680_MODE_MAX = common dso_local global i64 0, align 8
@OV2680_WIDTH_MAX = common dso_local global i64 0, align 8
@OV2680_HEIGHT_MAX = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OV2680_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @ov2680_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca %struct.v4l2_fract, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %9 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OV2680_MODE_MAX, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OV2680_WIDTH_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OV2680_HEIGHT_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20, %14, %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %26
  %36 = load i32, i32* @OV2680_FRAME_RATE, align 4
  %37 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %39, i32 0, i32 4
  %41 = bitcast %struct.v4l2_fract* %40 to i8*
  %42 = bitcast %struct.v4l2_fract* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
