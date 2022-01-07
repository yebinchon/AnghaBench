; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_mdc_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_mdc_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }

@CLK = common dso_local global i32 0, align 4
@GEM_CLK_DIV8 = common dso_local global i32 0, align 4
@GEM_CLK_DIV16 = common dso_local global i32 0, align 4
@GEM_CLK_DIV32 = common dso_local global i32 0, align 4
@GEM_CLK_DIV48 = common dso_local global i32 0, align 4
@GEM_CLK_DIV64 = common dso_local global i32 0, align 4
@GEM_CLK_DIV96 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @gem_mdc_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_mdc_clk_div(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.macb* %0, %struct.macb** %2, align 8
  %5 = load %struct.macb*, %struct.macb** %2, align 8
  %6 = getelementptr inbounds %struct.macb, %struct.macb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ule i64 %9, 20000000
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @CLK, align 4
  %13 = load i32, i32* @GEM_CLK_DIV8, align 4
  %14 = call i32 @GEM_BF(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ule i64 %16, 40000000
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @CLK, align 4
  %20 = load i32, i32* @GEM_CLK_DIV16, align 4
  %21 = call i32 @GEM_BF(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = icmp ule i64 %23, 80000000
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CLK, align 4
  %27 = load i32, i32* @GEM_CLK_DIV32, align 4
  %28 = call i32 @GEM_BF(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = icmp ule i64 %30, 120000000
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @CLK, align 4
  %34 = load i32, i32* @GEM_CLK_DIV48, align 4
  %35 = call i32 @GEM_BF(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = icmp ule i64 %37, 160000000
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @CLK, align 4
  %41 = load i32, i32* @GEM_CLK_DIV64, align 4
  %42 = call i32 @GEM_BF(i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @CLK, align 4
  %45 = load i32, i32* @GEM_CLK_DIV96, align 4
  %46 = call i32 @GEM_BF(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %25
  br label %50

50:                                               ; preds = %49, %18
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @GEM_BF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
