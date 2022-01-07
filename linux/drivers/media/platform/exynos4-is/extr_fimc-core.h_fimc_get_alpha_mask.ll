; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_fimc_get_alpha_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_fimc_get_alpha_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_fmt*)* @fimc_get_alpha_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_get_alpha_mask(%struct.fimc_fmt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_fmt*, align 8
  store %struct.fimc_fmt* %0, %struct.fimc_fmt** %3, align 8
  %4 = load %struct.fimc_fmt*, %struct.fimc_fmt** %3, align 8
  %5 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %9
  ]

7:                                                ; preds = %1
  store i32 15, i32* %2, align 4
  br label %11

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  store i32 255, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9, %8, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
