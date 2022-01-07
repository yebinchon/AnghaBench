; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_aspm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_aspm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64 }
%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@ATH_BTCOEX_CFG_NONE = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L0S = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Disabling ASPM since BTCOEX is enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ASPM enabled: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_common*)* @ath_pci_aspm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_pci_aspm_init(%struct.ath_common* %0) #0 {
  %2 = alloca %struct.ath_common*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %2, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ath_softc*
  store %struct.ath_softc* %11, %struct.ath_softc** %3, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %4, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %85

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %6, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = icmp ne %struct.pci_dev* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %85

33:                                               ; preds = %24
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = call i64 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw* %34)
  %36 = load i64, i64* @ATH_BTCOEX_CFG_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = call i64 @AR_SREV_9285(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %45 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L0S, align 4
  %46 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %43, i32 %44, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %50 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %51 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L0S, align 4
  %52 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %49, i32 %50, i32 %53)
  %55 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %56 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %85

57:                                               ; preds = %38, %33
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = call i64 @AR_SREV_9462(%struct.ath_hw* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @pci_read_config_dword(%struct.pci_dev* %62, i32 1804, i32* %65)
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %69 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %70 = call i32 @pcie_capability_read_word(%struct.pci_dev* %68, i32 %69, i32* %7)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L0S, align 4
  %73 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = call i32 @ath9k_hw_configpcipowersave(%struct.ath_hw* %80, i32 0)
  %82 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %23, %32, %42, %77, %67
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ath9k_hw_get_btcoex_scheme(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ath_info(%struct.ath_common*, i8*, ...) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ath9k_hw_configpcipowersave(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
