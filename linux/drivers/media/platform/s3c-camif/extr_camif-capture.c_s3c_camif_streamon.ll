; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.camif_vp = type { i8*, i32, i32, %struct.camif_dev* }
%struct.camif_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.media_entity }
%struct.media_entity = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"[vp%d]\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @s3c_camif_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.camif_vp*, align 8
  %9 = alloca %struct.camif_dev*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.camif_vp* @video_drvdata(%struct.file* %12)
  store %struct.camif_vp* %13, %struct.camif_vp** %8, align 8
  %14 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %15 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %14, i32 0, i32 3
  %16 = load %struct.camif_dev*, %struct.camif_dev** %15, align 8
  store %struct.camif_dev* %16, %struct.camif_dev** %9, align 8
  %17 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  %18 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.media_entity* %21, %struct.media_entity** %10, align 8
  %22 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %23 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %3
  %33 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %34 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %39 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %75

46:                                               ; preds = %37, %32
  %47 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %48 = call i64 @s3c_vp_active(%struct.camif_vp* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %75

51:                                               ; preds = %46
  %52 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %53 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  %54 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @media_pipeline_start(%struct.media_entity* %52, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %51
  %62 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  %63 = call i32 @camif_pipeline_validate(%struct.camif_dev* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %68 = call i32 @media_pipeline_stop(%struct.media_entity* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.camif_vp*, %struct.camif_vp** %8, align 8
  %72 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %71, i32 0, i32 1
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @vb2_streamon(i32* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %66, %59, %50, %43, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @s3c_vp_active(%struct.camif_vp*) #1

declare dso_local i32 @media_pipeline_start(%struct.media_entity*, i32) #1

declare dso_local i32 @camif_pipeline_validate(%struct.camif_dev*) #1

declare dso_local i32 @media_pipeline_stop(%struct.media_entity*) #1

declare dso_local i32 @vb2_streamon(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
