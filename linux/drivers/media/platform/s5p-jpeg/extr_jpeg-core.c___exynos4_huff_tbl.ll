; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c___exynos4_huff_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c___exynos4_huff_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXYNOS4_HUFF_TBL_HACCL = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HACCV = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HACLL = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HACLV = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HDCCL = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HDCCV = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HDCLL = common dso_local global i32 0, align 4
@EXYNOS4_HUFF_TBL_HDCLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @__exynos4_huff_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__exynos4_huff_tbl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EXYNOS4_HUFF_TBL_HACCL, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @EXYNOS4_HUFF_TBL_HACCV, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %10
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EXYNOS4_HUFF_TBL_HACLL, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @EXYNOS4_HUFF_TBL_HACLV, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @EXYNOS4_HUFF_TBL_HDCCL, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EXYNOS4_HUFF_TBL_HDCCV, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @EXYNOS4_HUFF_TBL_HDCLL, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EXYNOS4_HUFF_TBL_HDCLV, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %41, %29, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
