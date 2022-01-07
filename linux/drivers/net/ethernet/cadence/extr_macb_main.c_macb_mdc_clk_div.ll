; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdc_clk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_mdc_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }

@CLK = common dso_local global i32 0, align 4
@MACB_CLK_DIV8 = common dso_local global i32 0, align 4
@MACB_CLK_DIV16 = common dso_local global i32 0, align 4
@MACB_CLK_DIV32 = common dso_local global i32 0, align 4
@MACB_CLK_DIV64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @macb_mdc_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_mdc_clk_div(%struct.macb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.macb* %0, %struct.macb** %3, align 8
  %6 = load %struct.macb*, %struct.macb** %3, align 8
  %7 = call i64 @macb_is_gem(%struct.macb* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.macb*, %struct.macb** %3, align 8
  %11 = call i32 @gem_mdc_clk_div(%struct.macb* %10)
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.macb*, %struct.macb** %3, align 8
  %14 = getelementptr inbounds %struct.macb, %struct.macb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ule i64 %17, 20000000
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @CLK, align 4
  %21 = load i32, i32* @MACB_CLK_DIV8, align 4
  %22 = call i32 @MACB_BF(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = icmp ule i64 %24, 40000000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @CLK, align 4
  %28 = load i32, i32* @MACB_CLK_DIV16, align 4
  %29 = call i32 @MACB_BF(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = icmp ule i64 %31, 80000000
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @CLK, align 4
  %35 = load i32, i32* @MACB_CLK_DIV32, align 4
  %36 = call i32 @MACB_BF(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @CLK, align 4
  %39 = load i32, i32* @MACB_CLK_DIV64, align 4
  %40 = call i32 @MACB_BF(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @gem_mdc_clk_div(%struct.macb*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @MACB_BF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
