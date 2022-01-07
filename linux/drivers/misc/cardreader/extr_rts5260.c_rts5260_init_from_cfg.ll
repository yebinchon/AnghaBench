; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_from_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_from_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i32, i32, i32, i32, i64 }

@PCR_ASPM_SETTING_5260 = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_init_from_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_init_from_cfg(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 1
  store %struct.rtsx_cr_option* %7, %struct.rtsx_cr_option** %3, align 8
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = load i32, i32* @PCR_ASPM_SETTING_5260, align 4
  %10 = call i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr* %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ASPM_L1_1_EN_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = load i32, i32* @ASPM_L1_1_EN, align 4
  %18 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ASPM_L1_2_EN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load i32, i32* @ASPM_L1_2_EN, align 4
  %27 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PM_L1_1_EN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = load i32, i32* @PM_L1_1_EN, align 4
  %36 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PM_L1_2_EN_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = load i32, i32* @PM_L1_2_EN, align 4
  %45 = call i32 @rtsx_set_dev_flag(%struct.rtsx_pcr* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = call i32 @rts5260_pwr_saving_setting(%struct.rtsx_pcr* %47)
  %49 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %50 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %55 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %58 = call i32 @pcie_capability_read_word(i32 %56, i32 %57, i32* %5)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PCI_EXP_DEVCTL2_LTR_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %65 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %67 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %69 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %70 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr* %68, i32 %71)
  br label %76

73:                                               ; preds = %53
  %74 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %63
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %79 = load i32, i32* @ASPM_L1_1_EN, align 4
  %80 = load i32, i32* @ASPM_L1_2_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PM_L1_1_EN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PM_L1_2_EN, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @rtsx_check_dev_flag(%struct.rtsx_pcr* %78, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %90 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  br label %94

91:                                               ; preds = %77
  %92 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %93 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  ret void
}

declare dso_local i32 @rtsx_pci_read_config_dword(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32 @rtsx_set_dev_flag(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rts5260_pwr_saving_setting(%struct.rtsx_pcr*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @rtsx_set_ltr_latency(%struct.rtsx_pcr*, i32) #1

declare dso_local i64 @rtsx_check_dev_flag(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
