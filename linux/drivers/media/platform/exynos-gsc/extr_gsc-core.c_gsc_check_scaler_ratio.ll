; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_check_scaler_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_check_scaler_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_variant = type { i32, i32, i32 }

@GSC_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_check_scaler_ratio(%struct.gsc_variant* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsc_variant*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gsc_variant* %0, %struct.gsc_variant** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @GSC_DMA, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load %struct.gsc_variant*, %struct.gsc_variant** %9, align 8
  %24 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  br label %30

26:                                               ; preds = %7
  %27 = load %struct.gsc_variant*, %struct.gsc_variant** %9, align 8
  %28 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 90
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 270
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %17, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %18, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32, i32* %18, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %55, %56
  %58 = load %struct.gsc_variant*, %struct.gsc_variant** %9, align 8
  %59 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.gsc_variant*, %struct.gsc_variant** %9, align 8
  %67 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62, %54, %48, %42
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
