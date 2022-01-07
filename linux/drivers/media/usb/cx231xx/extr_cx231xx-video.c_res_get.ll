; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_res_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_fh = type { i32, i64, %struct.cx231xx* }
%struct.cx231xx = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx_fh*)* @res_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_get(%struct.cx231xx_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx_fh*, align 8
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  store %struct.cx231xx_fh* %0, %struct.cx231xx_fh** %3, align 8
  %6 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %3, align 8
  %7 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %6, i32 0, i32 2
  %8 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  store %struct.cx231xx* %8, %struct.cx231xx** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %3, align 8
  %10 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %3, align 8
  %17 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %21
  %30 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %53

32:                                               ; preds = %15
  %33 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %3, align 8
  %34 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %38
  %47 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %57

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %3, align 8
  %55 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %49, %43, %26, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
