; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@LDO_CONFIG2 = common dso_local global i32 0, align 4
@DV331812_VDD1 = common dso_local global i32 0, align 4
@LDO_VCC_CFG0 = common dso_local global i32 0, align 4
@RTS5260_DVCC_TUNE_MASK = common dso_local global i32 0, align 4
@RTS5260_DVCC_33 = common dso_local global i32 0, align 4
@LDO_VCC_CFG1 = common dso_local global i32 0, align 4
@LDO_POW_SDVDD1_MASK = common dso_local global i32 0, align 4
@LDO_POW_SDVDD1_ON = common dso_local global i32 0, align 4
@DV331812_POWERON = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@SD_CFG1 = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_128 = common dso_local global i32 0, align 4
@SD_20_MODE = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_CTL = common dso_local global i32 0, align 4
@SD20_RX_POS_EDGE = common dso_local global i32 0, align 4
@SD_PUSH_POINT_CTL = common dso_local global i32 0, align 4
@CARD_STOP = common dso_local global i32 0, align 4
@SD_STOP = common dso_local global i32 0, align 4
@SD_CLR_ERR = common dso_local global i32 0, align 4
@SD_CFG3 = common dso_local global i32 0, align 4
@SD30_CLK_END_EN = common dso_local global i32 0, align 4
@REG_SD_STOP_SDCLK_CFG = common dso_local global i32 0, align 4
@SD30_CLK_STOP_CFG_EN = common dso_local global i32 0, align 4
@SD30_CLK_STOP_CFG1 = common dso_local global i32 0, align 4
@SD30_CLK_STOP_CFG0 = common dso_local global i32 0, align 4
@REG_PRE_RW_MODE = common dso_local global i32 0, align 4
@EN_INFINITE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32)* @rts5260_card_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5260_card_power_on(%struct.rtsx_pcr* %0, i32 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %7, i32 0, i32 1
  store %struct.rtsx_cr_option* %8, %struct.rtsx_cr_option** %6, align 8
  %9 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %6, align 8
  %10 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %15 = call i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %18 = load i32, i32* @LDO_CONFIG2, align 4
  %19 = load i32, i32* @DV331812_VDD1, align 4
  %20 = load i32, i32* @DV331812_VDD1, align 4
  %21 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %23 = load i32, i32* @LDO_VCC_CFG0, align 4
  %24 = load i32, i32* @RTS5260_DVCC_TUNE_MASK, align 4
  %25 = load i32, i32* @RTS5260_DVCC_33, align 4
  %26 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %28 = load i32, i32* @LDO_VCC_CFG1, align 4
  %29 = load i32, i32* @LDO_POW_SDVDD1_MASK, align 4
  %30 = load i32, i32* @LDO_POW_SDVDD1_ON, align 4
  %31 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %33 = load i32, i32* @LDO_CONFIG2, align 4
  %34 = load i32, i32* @DV331812_POWERON, align 4
  %35 = load i32, i32* @DV331812_POWERON, align 4
  %36 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %32, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @msleep(i32 20)
  %38 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %39 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %16
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %16
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %53 = call i32 @sd_set_sample_push_timing_sd30(%struct.rtsx_pcr* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %56 = load i32, i32* @SD_CFG1, align 4
  %57 = load i32, i32* @SD_CLK_DIVIDE_128, align 4
  %58 = load i32, i32* @SD_20_MODE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %55, i32 %56, i32 255, i32 %59)
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %62 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %63 = load i32, i32* @SD20_RX_POS_EDGE, align 4
  %64 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %61, i32 %62, i32 255, i32 %63)
  %65 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %66 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %67 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %65, i32 %66, i32 255, i32 0)
  %68 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %69 = load i32, i32* @CARD_STOP, align 4
  %70 = load i32, i32* @SD_STOP, align 4
  %71 = load i32, i32* @SD_CLR_ERR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SD_STOP, align 4
  %74 = load i32, i32* @SD_CLR_ERR, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %68, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %78 = load i32, i32* @SD_CFG3, align 4
  %79 = load i32, i32* @SD30_CLK_END_EN, align 4
  %80 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %82 = load i32, i32* @REG_SD_STOP_SDCLK_CFG, align 4
  %83 = load i32, i32* @SD30_CLK_STOP_CFG_EN, align 4
  %84 = load i32, i32* @SD30_CLK_STOP_CFG1, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SD30_CLK_STOP_CFG0, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %81, i32 %82, i32 %87, i32 0)
  %89 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %90 = load i32, i32* @REG_PRE_RW_MODE, align 4
  %91 = load i32, i32* @EN_INFINITE_MODE, align 4
  %92 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %89, i32 %90, i32 %91, i32 0)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @rtsx_pci_enable_ocp(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sd_set_sample_push_timing_sd30(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
