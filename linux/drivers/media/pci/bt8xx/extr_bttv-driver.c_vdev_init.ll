; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_vdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.video_device = type { i32, i32, i32* }

@video_device_release_empty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"BT%d%s %s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@TUNER_ABSENT = common dso_local global i64 0, align 8
@VIDIOC_G_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_S_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@VIDIOC_S_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.video_device*, %struct.video_device*, i8*)* @vdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_init(%struct.bttv* %0, %struct.video_device* %1, %struct.video_device* %2, i8* %3) #0 {
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i8*, align 8
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store %struct.video_device* %2, %struct.video_device** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.video_device*, %struct.video_device** %6, align 8
  %10 = load %struct.video_device*, %struct.video_device** %7, align 8
  %11 = bitcast %struct.video_device* %9 to i8*
  %12 = bitcast %struct.video_device* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  %13 = load %struct.bttv*, %struct.bttv** %5, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @video_device_release_empty, align 4
  %19 = load %struct.video_device*, %struct.video_device** %6, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.video_device*, %struct.video_device** %6, align 8
  %22 = load %struct.bttv*, %struct.bttv** %5, align 8
  %23 = call i32 @video_set_drvdata(%struct.video_device* %21, %struct.bttv* %22)
  %24 = load %struct.video_device*, %struct.video_device** %6, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bttv*, %struct.bttv** %5, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bttv*, %struct.bttv** %5, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 848
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.bttv*, %struct.bttv** %5, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 18
  br label %39

39:                                               ; preds = %34, %4
  %40 = phi i1 [ false, %4 ], [ %38, %34 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %45 = load %struct.bttv*, %struct.bttv** %5, align 8
  %46 = getelementptr inbounds %struct.bttv, %struct.bttv* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %42, i8* %43, i32 %51)
  %53 = load %struct.bttv*, %struct.bttv** %5, align 8
  %54 = getelementptr inbounds %struct.bttv, %struct.bttv* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TUNER_ABSENT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %39
  %59 = load %struct.video_device*, %struct.video_device** %6, align 8
  %60 = load i32, i32* @VIDIOC_G_FREQUENCY, align 4
  %61 = call i32 @v4l2_disable_ioctl(%struct.video_device* %59, i32 %60)
  %62 = load %struct.video_device*, %struct.video_device** %6, align 8
  %63 = load i32, i32* @VIDIOC_S_FREQUENCY, align 4
  %64 = call i32 @v4l2_disable_ioctl(%struct.video_device* %62, i32 %63)
  %65 = load %struct.video_device*, %struct.video_device** %6, align 8
  %66 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %67 = call i32 @v4l2_disable_ioctl(%struct.video_device* %65, i32 %66)
  %68 = load %struct.video_device*, %struct.video_device** %6, align 8
  %69 = load i32, i32* @VIDIOC_S_TUNER, align 4
  %70 = call i32 @v4l2_disable_ioctl(%struct.video_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %58, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.bttv*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @v4l2_disable_ioctl(%struct.video_device*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
