; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_get_in_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_get_in_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i64, i64 }

@FIMC_REG_MSCTRL_FLIP_NORMAL = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_FLIP_Y_MIRROR = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_FLIP_X_MIRROR = common dso_local global i32 0, align 4
@FIMC_REG_MSCTRL_FLIP_180 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*)* @fimc_hw_get_in_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_hw_get_in_flip(%struct.fimc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  %5 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_NORMAL, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_Y_MIRROR, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_X_MIRROR, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 90
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_180, align 4
  %29 = xor i32 %27, %28
  %30 = load i32, i32* @FIMC_REG_MSCTRL_FLIP_180, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
