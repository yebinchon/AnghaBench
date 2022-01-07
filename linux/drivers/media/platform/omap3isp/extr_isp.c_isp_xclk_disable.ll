; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.isp_xclk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @isp_xclk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_xclk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.isp_xclk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.isp_xclk* @to_isp_xclk(%struct.clk_hw* %5)
  store %struct.isp_xclk* %6, %struct.isp_xclk** %3, align 8
  %7 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %8 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %7, i32 0, i32 1
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %12 = call i32 @isp_xclk_update(%struct.isp_xclk* %11, i32 0)
  %13 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %14 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.isp_xclk*, %struct.isp_xclk** %3, align 8
  %16 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local %struct.isp_xclk* @to_isp_xclk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isp_xclk_update(%struct.isp_xclk*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
