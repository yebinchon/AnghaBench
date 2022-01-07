; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_finalize_gpio_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_finalize_gpio_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { i64 }

@lpc_ich_gpio_cell = common dso_local global %struct.mfd_cell zeroinitializer, align 8
@lpc_chipset_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @lpc_ich_finalize_gpio_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_ich_finalize_gpio_cell(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.lpc_ich_priv*, align 8
  %4 = alloca %struct.mfd_cell*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.lpc_ich_priv* %6, %struct.lpc_ich_priv** %3, align 8
  store %struct.mfd_cell* @lpc_ich_gpio_cell, %struct.mfd_cell** %4, align 8
  %7 = load i32*, i32** @lpc_chipset_info, align 8
  %8 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %9 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %13 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.mfd_cell*, %struct.mfd_cell** %4, align 8
  %15 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %14, i32 0, i32 0
  store i32 4, i32* %15, align 8
  ret void
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
