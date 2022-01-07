; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.viu_fh = type { i64, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.viu_fh*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.viu_fh*
  store %struct.viu_fh* %10, %struct.viu_fh** %8, align 8
  %11 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %12 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %21 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %31 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @viu_stop_dma(i32 %32)
  %34 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %35 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %34, i32 0, i32 1
  %36 = call i32 @videobuf_streamoff(i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @viu_stop_dma(i32) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
