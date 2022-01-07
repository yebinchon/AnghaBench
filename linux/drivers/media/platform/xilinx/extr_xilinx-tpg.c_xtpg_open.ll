; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-tpg.c_xtpg_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-tpg.c_xtpg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_fh = type { i32 }
%struct.xtpg_device = type { i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* @xtpg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtpg_open(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_fh* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_fh*, align 8
  %5 = alloca %struct.xtpg_device*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_fh* %1, %struct.v4l2_subdev_fh** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.xtpg_device* @to_tpg(%struct.v4l2_subdev* %7)
  store %struct.xtpg_device* %8, %struct.xtpg_device** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %9, i32 %12, i32 0)
  store %struct.v4l2_mbus_framefmt* %13, %struct.v4l2_mbus_framefmt** %6, align 8
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %15 = load %struct.xtpg_device*, %struct.xtpg_device** %5, align 8
  %16 = getelementptr inbounds %struct.xtpg_device, %struct.xtpg_device* %15, i32 0, i32 1
  %17 = bitcast %struct.v4l2_mbus_framefmt* %14 to i8*
  %18 = bitcast %struct.v4l2_mbus_framefmt* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.xtpg_device*, %struct.xtpg_device** %5, align 8
  %20 = getelementptr inbounds %struct.xtpg_device, %struct.xtpg_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %24, i32 %27, i32 1)
  store %struct.v4l2_mbus_framefmt* %28, %struct.v4l2_mbus_framefmt** %6, align 8
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %30 = load %struct.xtpg_device*, %struct.xtpg_device** %5, align 8
  %31 = getelementptr inbounds %struct.xtpg_device, %struct.xtpg_device* %30, i32 0, i32 1
  %32 = bitcast %struct.v4l2_mbus_framefmt* %29 to i8*
  %33 = bitcast %struct.v4l2_mbus_framefmt* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %23, %2
  ret i32 0
}

declare dso_local %struct.xtpg_device* @to_tpg(%struct.v4l2_subdev*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
