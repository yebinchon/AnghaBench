; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.camif_vp = type { i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"[vp%d]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @s3c_camif_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
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
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %16 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %19, %3
  %29 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %30 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %29, i32 0, i32 2
  %31 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %32 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %38 = call i32 @vb2_qbuf(i32* %30, i32 %36, %struct.v4l2_buffer* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @vb2_qbuf(i32*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
