; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9m001_datafmt = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9m001 = type { %struct.mt9m001_datafmt*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@V4L2_SEL_TGT_CROP = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.mt9m001_datafmt*, %struct.v4l2_mbus_framefmt*)* @mt9m001_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_s_fmt(%struct.v4l2_subdev* %0, %struct.mt9m001_datafmt* %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.mt9m001_datafmt*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.mt9m001*, align 8
  %9 = alloca %struct.v4l2_subdev_selection, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.mt9m001_datafmt* %1, %struct.mt9m001_datafmt** %5, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %14 = call %struct.mt9m001* @to_mt9m001(%struct.i2c_client* %13)
  store %struct.mt9m001* %14, %struct.mt9m001** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %25 = load %struct.mt9m001*, %struct.mt9m001** %8, align 8
  %26 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %24, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %30 = load %struct.mt9m001*, %struct.mt9m001** %8, align 8
  %31 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %29, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 1
  %35 = load i32, i32* @V4L2_SEL_TGT_CROP, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %9, i32 0, i32 2
  %37 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %37, i32* %36, align 4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %39 = call i32 @mt9m001_set_selection(%struct.v4l2_subdev* %38, i32* null, %struct.v4l2_subdev_selection* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %3
  %43 = load %struct.mt9m001*, %struct.mt9m001** %8, align 8
  %44 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mt9m001*, %struct.mt9m001** %8, align 8
  %50 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %5, align 8
  %56 = load %struct.mt9m001*, %struct.mt9m001** %8, align 8
  %57 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %56, i32 0, i32 0
  store %struct.mt9m001_datafmt* %55, %struct.mt9m001_datafmt** %57, align 8
  %58 = load %struct.mt9m001_datafmt*, %struct.mt9m001_datafmt** %5, align 8
  %59 = getelementptr inbounds %struct.mt9m001_datafmt, %struct.mt9m001_datafmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %42, %3
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9m001* @to_mt9m001(%struct.i2c_client*) #1

declare dso_local i32 @mt9m001_set_selection(%struct.v4l2_subdev*, i32*, %struct.v4l2_subdev_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
