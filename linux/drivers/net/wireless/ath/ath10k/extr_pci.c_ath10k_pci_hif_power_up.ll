; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_hif_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"boot hif power up\0A\00", align 1
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"firmware crashed during chip reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to reset chip: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to initialize CE: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to setup init config: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not wake up target CPU: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_pci_hif_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_hif_power_up(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_pci*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %8)
  store %struct.ath10k_pci* %9, %struct.ath10k_pci** %6, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %12 = call i32 @ath10k_dbg(%struct.ath10k* %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %17 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %18 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %17, i32 0, i32 0
  %19 = call i32 @pcie_capability_read_word(i32 %15, i32 %16, i32* %18)
  %20 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %21 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %24 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %25 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCI_EXP_LNKCTL_ASPMC, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @pcie_capability_write_word(i32 %22, i32 %23, i32 %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = call i32 @ath10k_pci_chip_reset(%struct.ath10k* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %2
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = call i64 @ath10k_pci_has_fw_crashed(%struct.ath10k* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = call i32 @ath10k_warn(%struct.ath10k* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = call i32 @ath10k_pci_fw_crashed_clear(%struct.ath10k* %42)
  %44 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %45 = call i32 @ath10k_pci_fw_crashed_dump(%struct.ath10k* %44)
  br label %46

46:                                               ; preds = %39, %35
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ath10k_err(%struct.ath10k* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %81

50:                                               ; preds = %2
  %51 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %52 = call i32 @ath10k_pci_init_pipes(%struct.ath10k* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ath10k_err(%struct.ath10k* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %81

59:                                               ; preds = %50
  %60 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %61 = call i32 @ath10k_pci_init_config(%struct.ath10k* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ath10k_err(%struct.ath10k* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %70 = call i32 @ath10k_pci_wake_target_cpu(%struct.ath10k* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ath10k_err(%struct.ath10k* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %73, %64
  %79 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %80 = call i32 @ath10k_pci_ce_deinit(%struct.ath10k* %79)
  br label %81

81:                                               ; preds = %78, %55, %46
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(i32, i32, i32) #1

declare dso_local i32 @ath10k_pci_chip_reset(%struct.ath10k*) #1

declare dso_local i64 @ath10k_pci_has_fw_crashed(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_pci_fw_crashed_clear(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_fw_crashed_dump(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_pci_init_pipes(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_init_config(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_wake_target_cpu(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_ce_deinit(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
