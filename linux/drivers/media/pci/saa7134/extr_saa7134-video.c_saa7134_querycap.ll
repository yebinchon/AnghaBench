; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.saa7134_dev = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"saa7134\00", align 1
@saa7134_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@UNSET = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@saa7134_no_overlay = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %8)
  store %struct.saa7134_dev* %9, %struct.saa7134_dev** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strscpy(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strscpy(i32 %16, i8* %23, i32 4)
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %29 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @pci_name(i32 %30)
  %32 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %34 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TUNER_ABSENT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %3
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UNSET, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %59 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %51, %3
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %65 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %70 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i64, i64* @saa7134_no_overlay, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %79 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %74
  ret i32 0
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
