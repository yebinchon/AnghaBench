; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32_dwmac_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-stm32.c_stm32_dwmac_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dwmac = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.stm32_dwmac*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dwmac*)* @stm32_dwmac_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dwmac_clk_disable(%struct.stm32_dwmac* %0) #0 {
  %2 = alloca %struct.stm32_dwmac*, align 8
  store %struct.stm32_dwmac* %0, %struct.stm32_dwmac** %2, align 8
  %3 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_disable_unprepare(i32 %5)
  %7 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %2, align 8
  %8 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.stm32_dwmac*, i32)*, i32 (%struct.stm32_dwmac*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.stm32_dwmac*, i32)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_dwmac, %struct.stm32_dwmac* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.stm32_dwmac*, i32)*, i32 (%struct.stm32_dwmac*, i32)** %21, align 8
  %23 = load %struct.stm32_dwmac*, %struct.stm32_dwmac** %2, align 8
  %24 = call i32 %22(%struct.stm32_dwmac* %23, i32 0)
  br label %25

25:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
