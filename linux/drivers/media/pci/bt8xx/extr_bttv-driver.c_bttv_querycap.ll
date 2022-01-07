; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@v4l2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bttv\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@no_overlay = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_HW_FREQ_SEEK = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @bttv_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_capability*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 0
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load i64, i64* @v4l2, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %116

20:                                               ; preds = %3
  %21 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bttv*, %struct.bttv** %9, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strscpy(i32 %27, i8* %31, i32 4)
  %33 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bttv*, %struct.bttv** %9, align 8
  %37 = getelementptr inbounds %struct.bttv, %struct.bttv* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @pci_name(i32 %39)
  %41 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %43 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* @no_overlay, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %20
  %54 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %55 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %20
  %60 = load %struct.bttv*, %struct.bttv** %9, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 4
  %62 = call i64 @video_is_registered(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %66 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.bttv*, %struct.bttv** %9, align 8
  %72 = getelementptr inbounds %struct.bttv, %struct.bttv* %71, i32 0, i32 3
  %73 = call i64 @video_is_registered(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %77 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.bttv*, %struct.bttv** %9, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @V4L2_CAP_HW_FREQ_SEEK, align 4
  %87 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %75
  br label %92

92:                                               ; preds = %91, %70
  %93 = load %struct.bttv*, %struct.bttv** %9, align 8
  %94 = getelementptr inbounds %struct.bttv, %struct.bttv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %99 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load %struct.bttv*, %struct.bttv** %9, align 8
  %105 = getelementptr inbounds %struct.bttv, %struct.bttv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TUNER_ABSENT, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %111 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %103
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i64 @video_is_registered(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
