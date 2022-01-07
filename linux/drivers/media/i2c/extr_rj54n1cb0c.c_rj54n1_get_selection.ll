; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { %struct.TYPE_2__ }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RJ54N1_COLUMN_SKIP = common dso_local global i32 0, align 4
@RJ54N1_ROW_SKIP = common dso_local global i32 0, align 4
@RJ54N1_MAX_WIDTH = common dso_local global i32 0, align 4
@RJ54N1_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @rj54n1_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_get_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.rj54n1*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %13 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %12)
  store %struct.rj54n1* %13, %struct.rj54n1** %9, align 8
  %14 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %50 [
    i32 128, label %26
    i32 129, label %43
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @RJ54N1_COLUMN_SKIP, align 4
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @RJ54N1_ROW_SKIP, align 4
  %32 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @RJ54N1_MAX_WIDTH, align 4
  %36 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @RJ54N1_MAX_HEIGHT, align 4
  %40 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %53

43:                                               ; preds = %22
  %44 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %44, i32 0, i32 2
  %46 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %47 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_2__* %45 to i8*
  %49 = bitcast %struct.TYPE_2__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %53

50:                                               ; preds = %22
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %43, %26, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
