; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bttv_fh* }
%struct.bttv_fh = type { i32 }
%struct.video_device = type { i32 }
%struct.bttv = type { i32, i32, %struct.bttv_fh, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"open dev=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%d: open called (radio)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @radio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.bttv* @video_drvdata(%struct.file* %9)
  store %struct.bttv* %10, %struct.bttv** %5, align 8
  %11 = load %struct.video_device*, %struct.video_device** %4, align 8
  %12 = call i32 @video_device_node_name(%struct.video_device* %11)
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.bttv*, %struct.bttv** %5, align 8
  %15 = getelementptr inbounds %struct.bttv, %struct.bttv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.bttv_fh* @kmalloc(i32 4, i32 %19)
  store %struct.bttv_fh* %20, %struct.bttv_fh** %6, align 8
  %21 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %22 = icmp ne %struct.bttv_fh* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.bttv_fh* %31, %struct.bttv_fh** %33, align 8
  %34 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %35 = load %struct.bttv*, %struct.bttv** %5, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 2
  %37 = bitcast %struct.bttv_fh* %34 to i8*
  %38 = bitcast %struct.bttv_fh* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %40 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %39, i32 0, i32 0
  %41 = load %struct.video_device*, %struct.video_device** %4, align 8
  %42 = call i32 @v4l2_fh_init(i32* %40, %struct.video_device* %41)
  %43 = load %struct.bttv*, %struct.bttv** %5, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.bttv*, %struct.bttv** %5, align 8
  %48 = load %struct.bttv*, %struct.bttv** %5, align 8
  %49 = getelementptr inbounds %struct.bttv, %struct.bttv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @audio_mute(%struct.bttv* %47, i32 %50)
  %52 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %53 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %52, i32 0, i32 0
  %54 = call i32 @v4l2_fh_add(i32* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %30, %27
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.bttv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.bttv_fh* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @audio_mute(%struct.bttv*, i32) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
