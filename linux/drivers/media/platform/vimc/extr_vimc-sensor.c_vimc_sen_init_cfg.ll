; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-sensor.c_vimc_sen_init_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-sensor.c_vimc_sen_init_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@fmt_default = common dso_local global %struct.v4l2_mbus_framefmt zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*)* @vimc_sen_init_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vimc_sen_init_cfg(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %15, %struct.v4l2_subdev_pad_config* %16, i32 %17)
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %6, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %20 = bitcast %struct.v4l2_mbus_framefmt* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.v4l2_mbus_framefmt* @fmt_default to i8*), i64 4, i1 false)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %7

24:                                               ; preds = %7
  ret i32 0
}

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
