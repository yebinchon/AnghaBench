; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_calc_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_calc_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISPTCTRL_CTRL_DIV_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64)* @isp_xclk_calc_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isp_xclk_calc_divider(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64*, i64** %4, align 8
  store i64 %12, i64* %13, align 8
  %14 = load i64, i64* @ISPTCTRL_CTRL_DIV_BYPASS, align 8
  store i64 %14, i64* %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64*, i64** %4, align 8
  store i64 1, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i64, i64* %5, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @DIV_ROUND_CLOSEST(i64 %22, i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ISPTCTRL_CTRL_DIV_BYPASS, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, i64* @ISPTCTRL_CTRL_DIV_BYPASS, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = udiv i64 %33, %34
  %36 = load i64*, i64** %4, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %32, %11
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
