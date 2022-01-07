; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_notify_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_notify_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.mcam_camera = type { i32, %struct.v4l2_subdev*, %struct.TYPE_4__, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"sensor already bound\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@mcam_v4l_template = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sensor %s bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @mccic_notify_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mccic_notify_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.mcam_camera*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %9 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %10 = call %struct.mcam_camera* @notifier_to_mcam(%struct.v4l2_async_notifier* %9)
  store %struct.mcam_camera* %10, %struct.mcam_camera** %7, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %12 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %15 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %14, i32 0, i32 1
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %15, align 8
  %17 = icmp ne %struct.v4l2_subdev* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %20 = call i32 @cam_err(%struct.mcam_camera* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %26 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %24, %struct.mcam_camera* %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %29 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %28, i32 0, i32 1
  store %struct.v4l2_subdev* %27, %struct.v4l2_subdev** %29, align 8
  %30 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %31 = call i32 @mcam_cam_init(%struct.mcam_camera* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %36 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %35, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %36, align 8
  br label %83

37:                                               ; preds = %23
  %38 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %39 = call i32 @mcam_setup_vb2(%struct.mcam_camera* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %44 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %43, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %44, align 8
  br label %83

45:                                               ; preds = %37
  %46 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %47 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %46, i32 0, i32 2
  %48 = bitcast %struct.TYPE_4__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.TYPE_4__* @mcam_v4l_template to i8*), i64 24, i1 false)
  %49 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %50 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %49, i32 0, i32 4
  %51 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %52 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32* %50, i32** %53, align 8
  %54 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %55 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %54, i32 0, i32 0
  %56 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %57 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32* %55, i32** %58, align 8
  %59 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %60 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %59, i32 0, i32 3
  %61 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %62 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  %64 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %65 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %64, i32 0, i32 2
  %66 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %67 = call i32 @video_set_drvdata(%struct.TYPE_4__* %65, %struct.mcam_camera* %66)
  %68 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %69 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %68, i32 0, i32 2
  %70 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %71 = call i32 @video_register_device(%struct.TYPE_4__* %69, i32 %70, i32 -1)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %45
  %75 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %76 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %75, i32 0, i32 1
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %76, align 8
  br label %83

77:                                               ; preds = %45
  %78 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cam_dbg(%struct.mcam_camera* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %74, %42, %34, %18
  %84 = load %struct.mcam_camera*, %struct.mcam_camera** %7, align 8
  %85 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.mcam_camera* @notifier_to_mcam(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cam_err(%struct.mcam_camera*, i8*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.mcam_camera*) #1

declare dso_local i32 @mcam_cam_init(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_setup_vb2(%struct.mcam_camera*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_4__*, %struct.mcam_camera*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cam_dbg(%struct.mcam_camera*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
