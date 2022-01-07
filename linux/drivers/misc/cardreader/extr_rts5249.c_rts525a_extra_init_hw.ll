; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_extra_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts525a_extra_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@PCLK_CTL = common dso_local global i32 0, align 4
@PCLK_MODE_SEL = common dso_local global i32 0, align 4
@IC_VER_A = common dso_local global i32 0, align 4
@L1SUB_CONFIG2 = common dso_local global i32 0, align 4
@L1SUB_AUTO_CFG = common dso_local global i32 0, align 4
@RREF_CFG = common dso_local global i32 0, align 4
@RREF_VBGSEL_MASK = common dso_local global i32 0, align 4
@RREF_VBGSEL_1V25 = common dso_local global i32 0, align 4
@LDO_VIO_CFG = common dso_local global i32 0, align 4
@LDO_VIO_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_VIO_1V7 = common dso_local global i32 0, align 4
@LDO_DV12S_CFG = common dso_local global i32 0, align 4
@LDO_D12_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_D12_TUNE_DF = common dso_local global i32 0, align 4
@LDO_AV12S_CFG = common dso_local global i32 0, align 4
@LDO_AV12S_TUNE_MASK = common dso_local global i32 0, align 4
@LDO_AV12S_TUNE_DF = common dso_local global i32 0, align 4
@LDO_VCC_CFG0 = common dso_local global i32 0, align 4
@LDO_VCC_LMTVTH_MASK = common dso_local global i32 0, align 4
@LDO_VCC_LMTVTH_2A = common dso_local global i32 0, align 4
@OOBS_CONFIG = common dso_local global i32 0, align 4
@OOBS_AUTOK_DIS = common dso_local global i32 0, align 4
@OOBS_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts525a_extra_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts525a_extra_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rts5249_extra_init_hw(%struct.rtsx_pcr* %3)
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = load i32, i32* @PCLK_CTL, align 4
  %7 = load i32, i32* @PCLK_MODE_SEL, align 4
  %8 = load i32, i32* @PCLK_MODE_SEL, align 4
  %9 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = load i32, i32* @IC_VER_A, align 4
  %12 = call i64 @is_version(%struct.rtsx_pcr* %10, i32 21082, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = load i32, i32* @L1SUB_CONFIG2, align 4
  %17 = load i32, i32* @L1SUB_AUTO_CFG, align 4
  %18 = load i32, i32* @L1SUB_AUTO_CFG, align 4
  %19 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = load i32, i32* @RREF_CFG, align 4
  %22 = load i32, i32* @RREF_VBGSEL_MASK, align 4
  %23 = load i32, i32* @RREF_VBGSEL_1V25, align 4
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load i32, i32* @LDO_VIO_CFG, align 4
  %27 = load i32, i32* @LDO_VIO_TUNE_MASK, align 4
  %28 = load i32, i32* @LDO_VIO_1V7, align 4
  %29 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @LDO_DV12S_CFG, align 4
  %32 = load i32, i32* @LDO_D12_TUNE_MASK, align 4
  %33 = load i32, i32* @LDO_D12_TUNE_DF, align 4
  %34 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %36 = load i32, i32* @LDO_AV12S_CFG, align 4
  %37 = load i32, i32* @LDO_AV12S_TUNE_MASK, align 4
  %38 = load i32, i32* @LDO_AV12S_TUNE_DF, align 4
  %39 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = load i32, i32* @LDO_VCC_CFG0, align 4
  %42 = load i32, i32* @LDO_VCC_LMTVTH_MASK, align 4
  %43 = load i32, i32* @LDO_VCC_LMTVTH_2A, align 4
  %44 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = load i32, i32* @OOBS_CONFIG, align 4
  %47 = load i32, i32* @OOBS_AUTOK_DIS, align 4
  %48 = load i32, i32* @OOBS_VAL_MASK, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %45, i32 %46, i32 %49, i32 137)
  br label %51

51:                                               ; preds = %14, %1
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
