; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_check_scaler_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_check_scaler_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SCALER_MAX_HRATIO = common dso_local global i32 0, align 4
@SCALER_MAX_VRATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_check_scaler_ratio(%struct.fimc_ctx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fimc_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 90
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 270
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @swap(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %7, align 4
  br label %59

43:                                               ; preds = %23
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SCALER_MAX_HRATIO, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @SCALER_MAX_VRATIO, align 4
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 %51, %52
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %55, %41
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
