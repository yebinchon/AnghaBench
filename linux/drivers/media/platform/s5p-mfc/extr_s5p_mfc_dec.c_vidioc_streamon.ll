; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.s5p_mfc_ctx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_mfc_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %9)
  store %struct.s5p_mfc_ctx* %10, %struct.s5p_mfc_ctx** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = call i32 (...) @mfc_debug_enter()
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @vb2_streamon(i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @vb2_streamon(i32* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = call i32 (...) @mfc_debug_leave()
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @vb2_streamon(i32*, i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
