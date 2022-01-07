; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_finalize_wdt_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_finalize_wdt_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32, %struct.itco_wdt_platform_data* }
%struct.itco_wdt_platform_data = type { i32, i32 }
%struct.lpc_ich_info = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { i64 }

@lpc_ich_wdt_cell = common dso_local global %struct.mfd_cell zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpc_chipset_info = common dso_local global %struct.lpc_ich_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpc_ich_finalize_wdt_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_finalize_wdt_cell(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.itco_wdt_platform_data*, align 8
  %5 = alloca %struct.lpc_ich_priv*, align 8
  %6 = alloca %struct.lpc_ich_info*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.lpc_ich_priv* %9, %struct.lpc_ich_priv** %5, align 8
  store %struct.mfd_cell* @lpc_ich_wdt_cell, %struct.mfd_cell** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.itco_wdt_platform_data* @devm_kzalloc(i32* %11, i32 8, i32 %12)
  store %struct.itco_wdt_platform_data* %13, %struct.itco_wdt_platform_data** %4, align 8
  %14 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %15 = icmp ne %struct.itco_wdt_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** @lpc_chipset_info, align 8
  %21 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %5, align 8
  %22 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %20, i64 %23
  store %struct.lpc_ich_info* %24, %struct.lpc_ich_info** %6, align 8
  %25 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %6, align 8
  %26 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.itco_wdt_platform_data, %struct.itco_wdt_platform_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.itco_wdt_platform_data, %struct.itco_wdt_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %6, align 8
  %34 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strlcpy(i32 %32, i32 %35, i32 4)
  %37 = load %struct.itco_wdt_platform_data*, %struct.itco_wdt_platform_data** %4, align 8
  %38 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %39 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %38, i32 0, i32 1
  store %struct.itco_wdt_platform_data* %37, %struct.itco_wdt_platform_data** %39, align 8
  %40 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %41 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %40, i32 0, i32 0
  store i32 8, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.itco_wdt_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
