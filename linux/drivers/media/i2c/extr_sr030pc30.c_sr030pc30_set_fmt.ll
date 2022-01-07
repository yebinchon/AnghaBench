; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_sr030pc30.c_sr030pc30_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.sr030pc30_info = type { %struct.sr030pc30_format* }
%struct.sr030pc30_format = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @sr030pc30_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr030pc30_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.sr030pc30_info*, align 8
  %9 = alloca %struct.sr030pc30_format*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = icmp ne %struct.v4l2_subdev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev* %14)
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi %struct.sr030pc30_info* [ %15, %13 ], [ null, %16 ]
  store %struct.sr030pc30_info* %18, %struct.sr030pc30_info** %8, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = icmp ne %struct.v4l2_subdev* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %23 = icmp ne %struct.v4l2_subdev_format* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %21
  %28 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %28, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %29, %struct.v4l2_mbus_framefmt** %10, align 8
  %30 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %27
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %40 = call %struct.sr030pc30_format* @try_fmt(%struct.v4l2_subdev* %38, %struct.v4l2_mbus_framefmt* %39)
  store %struct.sr030pc30_format* %40, %struct.sr030pc30_format** %9, align 8
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_pad_config, %struct.v4l2_subdev_pad_config* %47, i32 0, i32 0
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %50 = bitcast %struct.v4l2_mbus_framefmt* %48 to i8*
  %51 = bitcast %struct.v4l2_mbus_framefmt* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %58

52:                                               ; preds = %37
  %53 = load %struct.sr030pc30_format*, %struct.sr030pc30_format** %9, align 8
  %54 = load %struct.sr030pc30_info*, %struct.sr030pc30_info** %8, align 8
  %55 = getelementptr inbounds %struct.sr030pc30_info, %struct.sr030pc30_info* %54, i32 0, i32 0
  store %struct.sr030pc30_format* %53, %struct.sr030pc30_format** %55, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = call i32 @sr030pc30_set_params(%struct.v4l2_subdev* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %46, %34, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.sr030pc30_info* @to_sr030pc30(%struct.v4l2_subdev*) #1

declare dso_local %struct.sr030pc30_format* @try_fmt(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sr030pc30_set_params(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
