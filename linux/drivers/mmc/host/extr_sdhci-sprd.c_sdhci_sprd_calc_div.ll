; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_calc_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_calc_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDHCI_SPRD_CLK_MAX_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sdhci_sprd_calc_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sprd_calc_div(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 2
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 2
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %12
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SDHCI_SPRD_CLK_MAX_DIV, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SDHCI_SPRD_CLK_MAX_DIV, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
