; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RJ54N1_MAX_WIDTH = common dso_local global i32 0, align 4
@RJ54N1_MAX_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Scaling for %dx%d : %u = %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @rj54n1_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.rj54n1*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %8, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %19 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %18)
  store %struct.rj54n1* %19, %struct.rj54n1** %9, align 8
  %20 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %20, i32 0, i32 2
  store %struct.v4l2_rect* %21, %struct.v4l2_rect** %10, align 8
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %102

42:                                               ; preds = %33
  %43 = load i32, i32* @RJ54N1_MAX_WIDTH, align 4
  %44 = load i32, i32* @RJ54N1_MAX_HEIGHT, align 4
  %45 = call i32 @v4l_bound_align_image(i32* %13, i32 8, i32 %43, i32 0, i32* %14, i32 8, i32 %44, i32 0, i32 0)
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 1024
  %48 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %49 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 2
  %52 = add nsw i32 %47, %51
  %53 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %54 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %52, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = mul nsw i32 %57, 1024
  %59 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %60 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 2
  %63 = add nsw i32 %58, %62
  %64 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %65 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %73 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %79 = call i32 @rj54n1_sensor_scale(%struct.v4l2_subdev* %78, i32* %13, i32* %14, i32* %11, i32* %12)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %42
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %4, align 4
  br label %102

84:                                               ; preds = %42
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %87 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %90 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %93 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %96 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.rj54n1*, %struct.rj54n1** %9, align 8
  %100 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %84, %82, %39
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rj54n1_sensor_scale(%struct.v4l2_subdev*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
