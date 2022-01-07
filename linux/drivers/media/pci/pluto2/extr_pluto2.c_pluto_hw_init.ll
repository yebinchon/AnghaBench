; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32 }

@REG_MISC = common dso_local global i32 0, align 4
@MISC_ALED = common dso_local global i32 0, align 4
@PID0_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pluto*)* @pluto_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pluto_hw_init(%struct.pluto* %0) #0 {
  %2 = alloca %struct.pluto*, align 8
  store %struct.pluto* %0, %struct.pluto** %2, align 8
  %3 = load %struct.pluto*, %struct.pluto** %2, align 8
  %4 = call i32 @pluto_reset_frontend(%struct.pluto* %3, i32 1)
  %5 = load %struct.pluto*, %struct.pluto** %2, align 8
  %6 = load i32, i32* @REG_MISC, align 4
  %7 = load i32, i32* @MISC_ALED, align 4
  %8 = load i32, i32* @MISC_ALED, align 4
  %9 = call i32 @pluto_rw(%struct.pluto* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.pluto*, %struct.pluto** %2, align 8
  %11 = call i32 @REG_PIDn(i32 0)
  %12 = load i32, i32* @PID0_END, align 4
  %13 = call i32 @pluto_rw(%struct.pluto* %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.pluto*, %struct.pluto** %2, align 8
  %15 = call i32 @pluto_dma_map(%struct.pluto* %14)
  %16 = load %struct.pluto*, %struct.pluto** %2, align 8
  %17 = call i32 @pluto_set_dma_addr(%struct.pluto* %16)
  %18 = load %struct.pluto*, %struct.pluto** %2, align 8
  %19 = call i32 @pluto_enable_irqs(%struct.pluto* %18)
  %20 = load %struct.pluto*, %struct.pluto** %2, align 8
  %21 = call i32 @pluto_reset_ts(%struct.pluto* %20, i32 1)
  ret i32 0
}

declare dso_local i32 @pluto_reset_frontend(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_rw(%struct.pluto*, i32, i32, i32) #1

declare dso_local i32 @REG_PIDn(i32) #1

declare dso_local i32 @pluto_dma_map(%struct.pluto*) #1

declare dso_local i32 @pluto_set_dma_addr(%struct.pluto*) #1

declare dso_local i32 @pluto_enable_irqs(%struct.pluto*) #1

declare dso_local i32 @pluto_reset_ts(%struct.pluto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
