; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_create_buffers = type { i32 }
%struct.camif_vp = type { i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)* @s3c_camif_create_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_create_bufs(%struct.file* %0, i8* %1, %struct.v4l2_create_buffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_create_buffers*, align 8
  %8 = alloca %struct.camif_vp*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_create_buffers* %2, %struct.v4l2_create_buffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.camif_vp* @video_drvdata(%struct.file* %10)
  store %struct.camif_vp* %11, %struct.camif_vp** %8, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %18 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %16, %3
  %26 = load i32, i32* @u32, align 4
  %27 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max_t(i32 %26, i32 1, i32 %29)
  %31 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %34 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %33, i32 0, i32 1
  %35 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %36 = call i32 @vb2_create_bufs(i32* %34, %struct.v4l2_create_buffers* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %25
  %40 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %41 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %47 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %39, %25
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @vb2_create_bufs(i32*, %struct.v4l2_create_buffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
