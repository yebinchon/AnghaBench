; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_vdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.saa7134_dev = type { i8*, i64, i32 }
%struct.video_device = type { i32, i32, i32* }

@video_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s (%s)\00", align 1
@saa7134_boards = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.video_device* (%struct.saa7134_dev*, %struct.video_device*, i8*)* @vdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.video_device* @vdev_init(%struct.saa7134_dev* %0, %struct.video_device* %1, i8* %2) #0 {
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.video_device* %1, %struct.video_device** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %9, %struct.video_device** %8, align 8
  %10 = load %struct.video_device*, %struct.video_device** %8, align 8
  %11 = icmp eq %struct.video_device* null, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.video_device* null, %struct.video_device** %4, align 8
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = bitcast %struct.video_device* %14 to i8*
  %17 = bitcast %struct.video_device* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 2
  %20 = load %struct.video_device*, %struct.video_device** %8, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* @video_device_release, align 4
  %23 = load %struct.video_device*, %struct.video_device** %8, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.video_device*, %struct.video_device** %8, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %29 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %34 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %38)
  %40 = load %struct.video_device*, %struct.video_device** %8, align 8
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %42 = call i32 @video_set_drvdata(%struct.video_device* %40, %struct.saa7134_dev* %41)
  %43 = load %struct.video_device*, %struct.video_device** %8, align 8
  store %struct.video_device* %43, %struct.video_device** %4, align 8
  br label %44

44:                                               ; preds = %13, %12
  %45 = load %struct.video_device*, %struct.video_device** %4, align 8
  ret %struct.video_device* %45
}

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
