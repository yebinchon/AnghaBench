; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.ivtv = type { %struct.ivtv_stream* }
%struct.ivtv_stream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, %struct.ivtv* }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"v4l2 ioctl: set frequency %d\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.TYPE_4__* @fh2id(i8* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  store %struct.ivtv* %13, %struct.ivtv** %8, align 8
  %14 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 0
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.TYPE_4__* @fh2id(i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i64 %20
  store %struct.ivtv_stream* %21, %struct.ivtv_stream** %9, align 8
  %22 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOTTY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %30
  %39 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %40 = call i32 @ivtv_mute(%struct.ivtv* %39)
  %41 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %46 = load i32, i32* @tuner, align 4
  %47 = load i32, i32* @s_frequency, align 4
  %48 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %49 = call i32 @ivtv_call_all(%struct.ivtv* %45, i32 %46, i32 %47, %struct.v4l2_frequency* %48)
  %50 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %51 = call i32 @ivtv_unmute(%struct.ivtv* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %35, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_4__* @fh2id(i8*) #1

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
