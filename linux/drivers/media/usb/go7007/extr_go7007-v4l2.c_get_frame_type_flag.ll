; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_get_frame_type_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_get_frame_type_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_BFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007_buffer*, i32)* @get_frame_type_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame_type_flag(%struct.go7007_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.go7007_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.go7007_buffer* %0, %struct.go7007_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32* @vb2_plane_vaddr(i32* %9, i32 0)
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %50 [
    i32 131, label %12
    i32 128, label %14
    i32 130, label %32
    i32 129, label %32
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 3
  switch i32 %24, label %31 [
    i32 0, label %25
    i32 1, label %27
    i32 2, label %29
  ]

25:                                               ; preds = %14
  %26 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %14
  %28 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %14
  %30 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %51

32:                                               ; preds = %2, %2
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 7
  switch i32 %42, label %49 [
    i32 1, label %43
    i32 2, label %45
    i32 3, label %47
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %32
  %46 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load i32, i32* @V4L2_BUF_FLAG_BFRAME, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %47, %45, %43, %31, %29, %27, %25, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @vb2_plane_vaddr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
