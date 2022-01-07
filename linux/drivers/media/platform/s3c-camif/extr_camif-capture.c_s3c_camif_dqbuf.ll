; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.camif_vp = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"[vp%d] sequence: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @s3c_camif_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.camif_vp*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.camif_vp* @video_drvdata(%struct.file* %9)
  store %struct.camif_vp* %10, %struct.camif_vp** %8, align 8
  %11 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %12 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %15 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %22, %3
  %32 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %33 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %32, i32 0, i32 1
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @vb2_dqbuf(i32* %33, %struct.v4l2_buffer* %34, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vb2_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
