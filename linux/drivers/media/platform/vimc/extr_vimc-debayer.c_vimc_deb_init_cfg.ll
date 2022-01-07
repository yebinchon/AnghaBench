; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-debayer.c_vimc_deb_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.vimc_deb_device = type { i32 }

@sink_fmt_default = common dso_local global %struct.v4l2_mbus_framefmt zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)* @vimc_deb_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_deb_init_cfg(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %5 = alloca %struct.vimc_deb_device*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.vimc_deb_device* %9, %struct.vimc_deb_device** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %4, align 8
  %12 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %10, %struct.v4l2_subdev_pad_config* %11, i32 0)
  store %struct.v4l2_mbus_framefmt* %12, %struct.v4l2_mbus_framefmt** %6, align 8
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %14 = bitcast %struct.v4l2_mbus_framefmt* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.v4l2_mbus_framefmt* @sink_fmt_default to i8*), i64 4, i1 false)
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %23, %struct.v4l2_subdev_pad_config* %24, i32 %25)
  store %struct.v4l2_mbus_framefmt* %26, %struct.v4l2_mbus_framefmt** %6, align 8
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %28 = bitcast %struct.v4l2_mbus_framefmt* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.v4l2_mbus_framefmt* @sink_fmt_default to i8*), i64 4, i1 false)
  %29 = load %struct.vimc_deb_device*, %struct.vimc_deb_device** %5, align 8
  %30 = getelementptr inbounds %struct.vimc_deb_device, %struct.vimc_deb_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %15
  ret i32 0
}

declare dso_local %struct.vimc_deb_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

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
