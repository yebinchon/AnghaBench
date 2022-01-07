; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.pcm20 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@ACI_READ_TUNERSTATION = common dso_local global i32 0, align 4
@ACI_READ_TUNERSTEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_CONTROLS = common dso_local global i32 0, align 4
@RDS_RXVALUE = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.pcm20*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.pcm20* @video_drvdata(%struct.file* %11)
  store %struct.pcm20* %12, %struct.pcm20** %8, align 8
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %91

20:                                               ; preds = %3
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 0
  store i32 1392000, i32* %29, align 8
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 1
  store i32 1728000, i32* %31, align 4
  %32 = load %struct.pcm20*, %struct.pcm20** %8, align 8
  %33 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ACI_READ_TUNERSTATION, align 4
  %36 = call i32 @snd_aci_cmd(i32 %34, i32 %35, i32 -1, i32 -1)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 65535
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pcm20*, %struct.pcm20** %8, align 8
  %45 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ACI_READ_TUNERSTEREO, align 4
  %48 = call i32 @snd_aci_cmd(i32 %46, i32 %47, i32 -1, i32 -1)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %20
  %53 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  br label %56

54:                                               ; preds = %20
  %55 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %61 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @V4L2_TUNER_CAP_RDS_CONTROLS, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pcm20*, %struct.pcm20** %8, align 8
  %70 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.pcm20*, %struct.pcm20** %8, align 8
  %75 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RDS_RXVALUE, align 4
  %78 = call i32 @rds_cmd(i32 %76, i32 %77, i64* %10, i32 1)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %56
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %86 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %81, %56
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %17
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.pcm20* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snd_aci_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @rds_cmd(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
