; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_cam_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_cam_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @mcam_cam_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_cam_configure(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %3, i32 0, i32 1
  %7 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %3, i32 0, i32 0
  %9 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %10 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %9, i32 0, i32 1
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %12 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @v4l2_fill_mbus_format(i32* %8, i32* %10, i32 %13)
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %16 = load i32, i32* @core, align 4
  %17 = load i32, i32* @init, align 4
  %18 = call i32 (%struct.mcam_camera*, i32, i32, i32*, ...) @sensor_call(%struct.mcam_camera* %15, i32 %16, i32 %17, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %23 = load i32, i32* @pad, align 4
  %24 = load i32, i32* @set_fmt, align 4
  %25 = call i32 (%struct.mcam_camera*, i32, i32, i32*, ...) @sensor_call(%struct.mcam_camera* %22, i32 %23, i32 %24, i32* null, %struct.v4l2_subdev_format* %3)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %28 = call i64 @mcam_cam_set_flip(%struct.mcam_camera* %27)
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @v4l2_fill_mbus_format(i32*, i32*, i32) #1

declare dso_local i32 @sensor_call(%struct.mcam_camera*, i32, i32, i32*, ...) #1

declare dso_local i64 @mcam_cam_set_flip(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
