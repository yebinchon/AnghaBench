; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32mp1_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dwmac = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dwmac*, i32)* @stm32mp1_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32mp1_clk_prepare(%struct.stm32_dwmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dwmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_dwmac* %0, %struct.stm32_dwmac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clk_prepare_enable(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %9
  %19 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %20 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @clk_prepare_enable(i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @clk_disable_unprepare(i64 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %18
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @clk_disable_unprepare(i64 %41)
  %43 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_disable_unprepare(i64 %50)
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %30, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
