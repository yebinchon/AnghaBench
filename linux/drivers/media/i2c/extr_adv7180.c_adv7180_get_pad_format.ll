; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_get_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_get_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.adv7180_state = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @adv7180_get_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_get_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.adv7180_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.adv7180_state* %9, %struct.adv7180_state** %7, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %20 = call %struct.TYPE_3__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %18, %struct.v4l2_subdev_pad_config* %19, i32 0)
  %21 = bitcast %struct.TYPE_3__* %17 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 4 %22, i64 4, i1 false)
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 1
  %27 = call i32 @adv7180_mbus_fmt(%struct.v4l2_subdev* %24, %struct.TYPE_3__* %26)
  %28 = load %struct.adv7180_state*, %struct.adv7180_state** %7, align 8
  %29 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %23, %15
  ret i32 0
}

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.TYPE_3__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @adv7180_mbus_fmt(%struct.v4l2_subdev*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
