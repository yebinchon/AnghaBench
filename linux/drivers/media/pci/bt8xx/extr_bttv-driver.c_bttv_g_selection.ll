; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, i32 }
%struct.bttv_fh = type { i32, %struct.bttv* }
%struct.bttv = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @bttv_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 1
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %20, %3
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %72 [
    i32 130, label %33
    i32 128, label %50
    i32 129, label %61
  ]

33:                                               ; preds = %29
  %34 = load %struct.bttv*, %struct.bttv** %9, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %38 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %75

50:                                               ; preds = %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvnorms, align 8
  %52 = load %struct.bttv*, %struct.bttv** %9, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %75

61:                                               ; preds = %29
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvnorms, align 8
  %63 = load %struct.bttv*, %struct.bttv** %9, align 8
  %64 = getelementptr inbounds %struct.bttv, %struct.bttv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %75

72:                                               ; preds = %29
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %61, %50, %33
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72, %26
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
