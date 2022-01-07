; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64 }
%struct.camif_vp = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"[vp%d] rb count: %d, owner: %p, priv: %p\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@CAMIF_REQ_BUFS_MIN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @s3c_camif_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.camif_vp*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.camif_vp* @video_drvdata(%struct.file* %10)
  store %struct.camif_vp* %11, %struct.camif_vp** %8, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17, i8* %20, i8* %21)
  %23 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %29 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %103

36:                                               ; preds = %27, %3
  %37 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @u32, align 4
  %43 = load i64, i64* @CAMIF_REQ_BUFS_MIN, align 8
  %44 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @max_t(i32 %42, i64 %43, i64 %46)
  %48 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %53

50:                                               ; preds = %36
  %51 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %52 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %55 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %54, i32 0, i32 2
  %56 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %57 = call i32 @vb2_reqbufs(i32* %55, %struct.v4l2_requestbuffers* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %103

62:                                               ; preds = %53
  %63 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CAMIF_REQ_BUFS_MIN, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %77 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %76, i32 0, i32 2
  %78 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %79 = call i32 @vb2_reqbufs(i32* %77, %struct.v4l2_requestbuffers* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %73, %67, %62
  %83 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %87 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %89 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %100 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %97, %92, %82
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %60, %33
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i8*, i8*) #1

declare dso_local i64 @max_t(i32, i64, i64) #1

declare dso_local i32 @vb2_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
