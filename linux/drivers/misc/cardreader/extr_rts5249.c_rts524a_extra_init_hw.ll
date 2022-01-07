; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_extra_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_extra_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@FUNC_FORCE_CTL = common dso_local global i32 0, align 4
@FORCE_ASPM_L1_EN = common dso_local global i32 0, align 4
@PM_EVENT_DEBUG = common dso_local global i32 0, align 4
@PME_DEBUG_0 = common dso_local global i32 0, align 4
@LDO_VCC_CFG1 = common dso_local global i32 0, align 4
@LDO_VCC_LMT_EN = common dso_local global i32 0, align 4
@PCLK_CTL = common dso_local global i32 0, align 4
@PCLK_MODE_SEL = common dso_local global i32 0, align 4
@IC_VER_A = common dso_local global i32 0, align 4
@LDO_DV18_CFG = common dso_local global i32 0, align 4
@LDO_DV18_SR_MASK = common dso_local global i32 0, align 4
@LDO_DV18_SR_DF = common dso_local global i32 0, align 4
@LDO_VCC_REF_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_VCC_REF_1V2 = common dso_local global i32 0, align 4
@LDO_VIO_CFG = common dso_local global i32 0, align 4
@LDO_VIO_REF_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_VIO_REF_1V2 = common dso_local global i32 0, align 4
@LDO_VIO_SR_MASK = common dso_local global i32 0, align 4
@LDO_VIO_SR_DF = common dso_local global i32 0, align 4
@LDO_DV12S_CFG = common dso_local global i32 0, align 4
@LDO_REF12_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_REF12_TUNE_DF = common dso_local global i32 0, align 4
@SD40_LDO_CTL1 = common dso_local global i32 0, align 4
@SD40_VIO_TUNE_MASK = common dso_local global i32 0, align 4
@SD40_VIO_TUNE_1V7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts524a_extra_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts524a_extra_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rts5249_extra_init_hw(%struct.rtsx_pcr* %3)
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = load i32, i32* @FUNC_FORCE_CTL, align 4
  %7 = load i32, i32* @FORCE_ASPM_L1_EN, align 4
  %8 = load i32, i32* @FORCE_ASPM_L1_EN, align 4
  %9 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = load i32, i32* @PM_EVENT_DEBUG, align 4
  %12 = load i32, i32* @PME_DEBUG_0, align 4
  %13 = load i32, i32* @PME_DEBUG_0, align 4
  %14 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = load i32, i32* @LDO_VCC_CFG1, align 4
  %17 = load i32, i32* @LDO_VCC_LMT_EN, align 4
  %18 = load i32, i32* @LDO_VCC_LMT_EN, align 4
  %19 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = load i32, i32* @PCLK_CTL, align 4
  %22 = load i32, i32* @PCLK_MODE_SEL, align 4
  %23 = load i32, i32* @PCLK_MODE_SEL, align 4
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load i32, i32* @IC_VER_A, align 4
  %27 = call i64 @is_version(%struct.rtsx_pcr* %25, i32 21066, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %1
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @LDO_DV18_CFG, align 4
  %32 = load i32, i32* @LDO_DV18_SR_MASK, align 4
  %33 = load i32, i32* @LDO_DV18_SR_DF, align 4
  %34 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = load i32, i32* @LDO_VCC_CFG1, align 4
  %37 = load i32, i32* @LDO_VCC_REF_TUNE_MASK, align 4
  %38 = load i32, i32* @LDO_VCC_REF_1V2, align 4
  %39 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = load i32, i32* @LDO_VIO_CFG, align 4
  %42 = load i32, i32* @LDO_VIO_REF_TUNE_MASK, align 4
  %43 = load i32, i32* @LDO_VIO_REF_1V2, align 4
  %44 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = load i32, i32* @LDO_VIO_CFG, align 4
  %47 = load i32, i32* @LDO_VIO_SR_MASK, align 4
  %48 = load i32, i32* @LDO_VIO_SR_DF, align 4
  %49 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %51 = load i32, i32* @LDO_DV12S_CFG, align 4
  %52 = load i32, i32* @LDO_REF12_TUNE_MASK, align 4
  %53 = load i32, i32* @LDO_REF12_TUNE_DF, align 4
  %54 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %56 = load i32, i32* @SD40_LDO_CTL1, align 4
  %57 = load i32, i32* @SD40_VIO_TUNE_MASK, align 4
  %58 = load i32, i32* @SD40_VIO_TUNE_1V7, align 4
  %59 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %29, %1
  ret i32 0
}

declare dso_local i32 @rts5249_extra_init_hw(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i64 @is_version(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
