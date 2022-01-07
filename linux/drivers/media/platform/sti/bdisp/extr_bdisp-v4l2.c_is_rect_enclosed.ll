; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_is_rect_enclosed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_is_rect_enclosed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_rect*, %struct.v4l2_rect*)* @is_rect_enclosed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rect_enclosed(%struct.v4l2_rect* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %6 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %57

22:                                               ; preds = %13
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp sgt i64 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %57

39:                                               ; preds = %22
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = icmp sgt i64 %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %38, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
