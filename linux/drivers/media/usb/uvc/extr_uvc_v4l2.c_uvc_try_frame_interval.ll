; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_try_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_try_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_frame = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uvc_frame*, i64)* @uvc_try_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uvc_try_frame_interval(%struct.uvc_frame* %0, i64 %1) #0 {
  %3 = alloca %struct.uvc_frame*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.uvc_frame* %0, %struct.uvc_frame** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %12 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %2
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %60, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %19 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %25 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %23, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %35 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %33, %40
  br label %52

42:                                               ; preds = %22
  %43 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %44 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = sub nsw i64 %49, %50
  br label %52

52:                                               ; preds = %42, %32
  %53 = phi i64 [ %41, %32 ], [ %51, %42 ]
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %63

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %16

63:                                               ; preds = %57, %16
  %64 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %65 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sub i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %4, align 8
  br label %106

72:                                               ; preds = %2
  %73 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %74 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  %78 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %79 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.uvc_frame*, %struct.uvc_frame** %3, align 8
  %84 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %8, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load i64, i64* %10, align 8
  %93 = sdiv i64 %92, 2
  %94 = add nsw i64 %91, %93
  %95 = load i64, i64* %10, align 8
  %96 = sdiv i64 %94, %95
  %97 = load i64, i64* %10, align 8
  %98 = mul nsw i64 %96, %97
  %99 = add nsw i64 %88, %98
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %72
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %103, %72
  br label %106

106:                                              ; preds = %105, %63
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
