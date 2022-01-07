; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tm6000_fh = type { i64, i32, %struct.tm6000_core* }
%struct.tm6000_core = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %11, %struct.tm6000_fh** %8, align 8
  %12 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %13 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %12, i32 0, i32 2
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %13, align 8
  store %struct.tm6000_core* %14, %struct.tm6000_core** %9, align 8
  %15 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %16 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %27 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %23
  %34 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %35 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %34, i32 0, i32 1
  %36 = call i32 @videobuf_streamoff(i32* %35)
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %38 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %39 = call i32 @res_free(%struct.tm6000_core* %37, %struct.tm6000_fh* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %30, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @res_free(%struct.tm6000_core*, %struct.tm6000_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
