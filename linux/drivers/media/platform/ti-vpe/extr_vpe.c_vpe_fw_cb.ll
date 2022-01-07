; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_fw_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_vpe_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.vpe_dev = type { %struct.TYPE_2__, i32, i32, %struct.video_device }

@vpe_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Device registered as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @vpe_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpe_fw_cb(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vpe_dev*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.vpe_dev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.vpe_dev* %7, %struct.vpe_dev** %3, align 8
  %8 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %8, i32 0, i32 3
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.video_device*, %struct.video_device** %4, align 8
  %11 = bitcast %struct.video_device* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.video_device* @vpe_videodev to i8*), i64 24, i1 false)
  %12 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %12, i32 0, i32 2
  %14 = load %struct.video_device*, %struct.video_device** %4, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %17 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %16, i32 0, i32 0
  %18 = load %struct.video_device*, %struct.video_device** %4, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 1
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %22 = call i32 @video_register_device(%struct.video_device* %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %27 = call i32 @vpe_err(%struct.vpe_dev* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %29 = call i32 @vpe_set_clock_enable(%struct.vpe_dev* %28, i32 0)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 @vpe_runtime_put(%struct.platform_device* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_disable(i32* %33)
  %35 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %36 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @v4l2_m2m_release(i32 %37)
  %39 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %40 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %39, i32 0, i32 0
  %41 = call i32 @v4l2_device_unregister(%struct.TYPE_2__* %40)
  br label %54

42:                                               ; preds = %1
  %43 = load %struct.video_device*, %struct.video_device** %4, align 8
  %44 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %45 = call i32 @video_set_drvdata(%struct.video_device* %43, %struct.vpe_dev* %44)
  %46 = load %struct.vpe_dev*, %struct.vpe_dev** %3, align 8
  %47 = getelementptr inbounds %struct.vpe_dev, %struct.vpe_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.video_device*, %struct.video_device** %4, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %42, %25
  ret void
}

declare dso_local %struct.vpe_dev* @platform_get_drvdata(%struct.platform_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @vpe_err(%struct.vpe_dev*, i8*) #1

declare dso_local i32 @vpe_set_clock_enable(%struct.vpe_dev*, i32) #1

declare dso_local i32 @vpe_runtime_put(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.vpe_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
