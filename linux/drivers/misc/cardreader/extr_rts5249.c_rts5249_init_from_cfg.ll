; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_init_from_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_init_from_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i32, i32, i64 }

@PID_524A = common dso_local global i32 0, align 4
@PCR_ASPM_SETTING_REG1 = common dso_local global i32 0, align 4
@PCR_ASPM_SETTING_REG2 = common dso_local global i32 0, align 4
@ASPM_L1_1_EN_MASK = common dso_local global i32 0, align 4
@ASPM_L1_1_EN = common dso_local global i32 0, align 4
@ASPM_L1_2_EN_MASK = common dso_local global i32 0, align 4
@ASPM_L1_2_EN = common dso_local global i32 0, align 4
@PM_L1_1_EN_MASK = common dso_local global i32 0, align 4
@PM_L1_1_EN = common dso_local global i32 0, align 4
@PM_L1_2_EN_MASK = common dso_local global i32 0, align 4
@PM_L1_2_EN = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_LTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5249_init_from_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5249_init_from_cfg(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 1
  store %struct.rtsx_cr_option* %7, %struct.rtsx_cr_option** %3, align 8
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = load i32, i32* @PID_524A, align 4
  %10 = call i64 @CHK_PCI_PID(%struct.rtsx_pcr* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = load i32, i32* @PCR_ASPM_SETTING_REG1, align 4
  %15 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %13, i32 %14, i32* %4)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = load i32, i32* @PCR_ASPM_SETTING_REG2, align 4
  %19 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %17, i32 %18, i32* %4)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ASPM_L1_1_EN_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = load i32, i32* @ASPM_L1_1_EN, align 4
  %28 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ASPM_L1_2_EN_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = load i32, i32* @ASPM_L1_2_EN, align 4
  %37 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PM_L1_1_EN_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %45 = load i32, i32* @PM_L1_1_EN, align 4
  %46 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PM_L1_2_EN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %54 = load i32, i32* @PM_L1_2_EN, align 4
  %55 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %58 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %63 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %66 = call i32 @pcie_capability_read_word(i32 %64, i32 %65, i32* %5)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PCI_EXP_DEVCTL2_LTR_EN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %73 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %77 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %78 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr* %76, i32 %79)
  br label %84

81:                                               ; preds = %61
  %82 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %83 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84, %56
  ret void
}

declare dso_local i64 @CHK_PCI_PID(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @rtsx_set_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
