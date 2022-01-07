; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_get_pci_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_get_pci_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pci_params = type { i32, i16, i32 }

@get_pci_mode.speed_map = internal global [4 x i16] [i16 33, i16 66, i16 100, i16 133], align 2
@PCI_VARIANT_PCIE = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@A_PCIX_MODE = common dso_local global i32 0, align 4
@F_64BIT = common dso_local global i32 0, align 4
@PCI_VARIANT_PCI = common dso_local global i32 0, align 4
@PCI_VARIANT_PCIX_MODE1_PARITY = common dso_local global i32 0, align 4
@PCI_VARIANT_PCIX_MODE1_ECC = common dso_local global i32 0, align 4
@PCI_VARIANT_PCIX_266_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.pci_params*)* @get_pci_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pci_mode(%struct.adapter* %0, %struct.pci_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pci_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pci_params* %1, %struct.pci_params** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @pci_is_pcie(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @PCI_VARIANT_PCIE, align 4
  %14 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %15 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %20 = call i32 @pcie_capability_read_word(i32 %18, i32 %19, i32* %6)
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 63
  %24 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %25 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %72

26:                                               ; preds = %2
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @A_PCIX_MODE, align 4
  %29 = call i32 @t3_read_reg(%struct.adapter* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @G_PCLKRANGE(i32 %30)
  %32 = getelementptr inbounds [4 x i16], [4 x i16]* @get_pci_mode.speed_map, i64 0, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %35 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %34, i32 0, i32 1
  store i16 %33, i16* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @F_64BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 64, i32 32
  %42 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %43 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @G_PCIXINITPAT(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i32, i32* @PCI_VARIANT_PCI, align 4
  %50 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %51 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %72

52:                                               ; preds = %26
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @PCI_VARIANT_PCIX_MODE1_PARITY, align 4
  %57 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %58 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %71

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @PCI_VARIANT_PCIX_MODE1_ECC, align 4
  %64 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %65 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @PCI_VARIANT_PCIX_266_MODE2, align 4
  %68 = load %struct.pci_params*, %struct.pci_params** %4, align 8
  %69 = getelementptr inbounds %struct.pci_params, %struct.pci_params* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %12, %71, %48
  ret void
}

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @G_PCLKRANGE(i32) #1

declare dso_local i32 @G_PCIXINITPAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
