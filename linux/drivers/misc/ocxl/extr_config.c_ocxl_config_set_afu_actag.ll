; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_set_afu_actag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_ocxl_config_set_afu_actag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@OCXL_DVSEC_ACTAG_MASK = common dso_local global i32 0, align 4
@OCXL_DVSEC_AFU_CTRL_ACTAG_EN = common dso_local global i64 0, align 8
@OCXL_DVSEC_AFU_CTRL_ACTAG_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocxl_config_set_afu_actag(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @OCXL_DVSEC_ACTAG_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_ACTAG_EN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @pci_write_config_byte(%struct.pci_dev* %13, i64 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @OCXL_DVSEC_ACTAG_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @OCXL_DVSEC_AFU_CTRL_ACTAG_BASE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i64 %27, i32 %28)
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
