; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.adv7180_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_FLAG_I2P = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7180_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.adv7180_state*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.adv7180_state* %11, %struct.adv7180_state** %7, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %27 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %18 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ADV7180_FLAG_I2P, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %32

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %3, %26
  %28 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %29 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %25
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 1
  %36 = call i32 @adv7180_mbus_fmt(%struct.v4l2_subdev* %33, %struct.v4l2_mbus_framefmt* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %32
  %43 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %44 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %57 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %59 = call i32 @adv7180_set_power(%struct.adv7180_state* %58, i32 0)
  %60 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %61 = call i32 @adv7180_set_field_mode(%struct.adv7180_state* %60)
  %62 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %63 = call i32 @adv7180_set_power(%struct.adv7180_state* %62, i32 1)
  br label %64

64:                                               ; preds = %51, %42
  br label %74

65:                                               ; preds = %32
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %68 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %66, %struct.v4l2_subdev_pad_config* %67, i32 0)
  store %struct.v4l2_mbus_framefmt* %68, %struct.v4l2_mbus_framefmt** %8, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %70 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %70, i32 0, i32 1
  %72 = bitcast %struct.v4l2_mbus_framefmt* %69 to i8*
  %73 = bitcast %struct.v4l2_mbus_framefmt* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 8 %73, i64 4, i1 false)
  br label %74

74:                                               ; preds = %65, %64
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7180_mbus_fmt(%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @adv7180_set_power(%struct.adv7180_state*, i32) #1

declare dso_local i32 @adv7180_set_field_mode(%struct.adv7180_state*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
