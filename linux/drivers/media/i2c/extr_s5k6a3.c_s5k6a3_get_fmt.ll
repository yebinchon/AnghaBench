; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_get_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_get_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.s5k6a3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @s5k6a3_get_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6a3_get_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.s5k6a3*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.s5k6a3* @sd_to_s5k6a3(%struct.v4l2_subdev* %9)
  store %struct.s5k6a3* %10, %struct.s5k6a3** %7, align 8
  %11 = load %struct.s5k6a3*, %struct.s5k6a3** %7, align 8
  %12 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %13 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.v4l2_mbus_framefmt* @__s5k6a3_get_format(%struct.s5k6a3* %11, %struct.v4l2_subdev_pad_config* %12, i32 %15, i32 %18)
  store %struct.v4l2_mbus_framefmt* %19, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = load %struct.s5k6a3*, %struct.s5k6a3** %7, align 8
  %21 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %23, i32 0, i32 0
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %26 = bitcast %struct.v4l2_mbus_framefmt* %24 to i8*
  %27 = bitcast %struct.v4l2_mbus_framefmt* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.s5k6a3*, %struct.s5k6a3** %7, align 8
  %29 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret i32 0
}

declare dso_local %struct.s5k6a3* @sd_to_s5k6a3(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__s5k6a3_get_format(%struct.s5k6a3*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
