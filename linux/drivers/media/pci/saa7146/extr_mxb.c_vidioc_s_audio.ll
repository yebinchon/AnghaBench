; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_vidioc_s_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_vidioc_s_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_audio = type { i32 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i64, i64 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [19 x i8] c"VIDIOC_S_AUDIO %d\0A\00", align 1
@mxb_inputs = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_s_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.mxb*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mxb*
  store %struct.mxb* %17, %struct.mxb** %9, align 8
  %18 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DEB_D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mxb_inputs, align 8
  %23 = load %struct.mxb*, %struct.mxb** %9, align 8
  %24 = getelementptr inbounds %struct.mxb, %struct.mxb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %3
  %36 = load %struct.mxb*, %struct.mxb** %9, align 8
  %37 = getelementptr inbounds %struct.mxb, %struct.mxb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %35
  %45 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.mxb*, %struct.mxb** %9, align 8
  %50 = getelementptr inbounds %struct.mxb, %struct.mxb* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mxb*, %struct.mxb** %9, align 8
  %52 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @tea6420_route(%struct.mxb* %51, i64 %55)
  %57 = load %struct.mxb*, %struct.mxb** %9, align 8
  %58 = getelementptr inbounds %struct.mxb, %struct.mxb* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.mxb*, %struct.mxb** %9, align 8
  %63 = call i32 @mxb_update_audmode(%struct.mxb* %62)
  br label %64

64:                                               ; preds = %61, %44
  br label %65

65:                                               ; preds = %64, %35
  store i32 0, i32* %4, align 4
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DEB_D(i8*, i32) #1

declare dso_local i32 @tea6420_route(%struct.mxb*, i64) #1

declare dso_local i32 @mxb_update_audmode(%struct.mxb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
