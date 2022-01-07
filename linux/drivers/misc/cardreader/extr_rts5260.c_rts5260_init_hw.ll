; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@L1SUB_CONFIG1 = common dso_local global i32 0, align 4
@AUX_CLK_ACTIVE_SEL_MASK = common dso_local global i32 0, align 4
@MAC_CKSW_DONE = common dso_local global i32 0, align 4
@L1SUB_CONFIG3 = common dso_local global i32 0, align 4
@PM_CLK_FORCE_CTL = common dso_local global i32 0, align 4
@CLK_PM_EN = common dso_local global i32 0, align 4
@PWD_SUSPEND_EN = common dso_local global i32 0, align 4
@PWR_GATE_CTRL = common dso_local global i32 0, align 4
@PWR_GATE_EN = common dso_local global i32 0, align 4
@REG_VREF = common dso_local global i32 0, align 4
@PWD_SUSPND_EN = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@U_AUTO_DMA_EN_MASK = common dso_local global i32 0, align 4
@U_AUTO_DMA_DISABLE = common dso_local global i32 0, align 4
@PCR_REVERSE_SOCKET = common dso_local global i32 0, align 4
@PETXCFG = common dso_local global i32 0, align 4
@OBFF_CFG = common dso_local global i32 0, align 4
@OBFF_EN_MASK = common dso_local global i32 0, align 4
@OBFF_DISABLE = common dso_local global i32 0, align 4
@CMD_TIMEOUT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts5260_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5260_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %6 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %5)
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %8 = load i32, i32* @WRITE_REG_CMD, align 4
  %9 = load i32, i32* @L1SUB_CONFIG1, align 4
  %10 = load i32, i32* @AUX_CLK_ACTIVE_SEL_MASK, align 4
  %11 = load i32, i32* @MAC_CKSW_DONE, align 4
  %12 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %14 = load i32, i32* @WRITE_REG_CMD, align 4
  %15 = load i32, i32* @L1SUB_CONFIG3, align 4
  %16 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %13, i32 %14, i32 %15, i32 255, i32 0)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %18 = load i32, i32* @WRITE_REG_CMD, align 4
  %19 = load i32, i32* @PM_CLK_FORCE_CTL, align 4
  %20 = load i32, i32* @CLK_PM_EN, align 4
  %21 = load i32, i32* @CLK_PM_EN, align 4
  %22 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %24 = load i32, i32* @WRITE_REG_CMD, align 4
  %25 = load i32, i32* @PWD_SUSPEND_EN, align 4
  %26 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %23, i32 %24, i32 %25, i32 255, i32 255)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @PWR_GATE_CTRL, align 4
  %30 = load i32, i32* @PWR_GATE_EN, align 4
  %31 = load i32, i32* @PWR_GATE_EN, align 4
  %32 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @REG_VREF, align 4
  %36 = load i32, i32* @PWD_SUSPND_EN, align 4
  %37 = load i32, i32* @PWD_SUSPND_EN, align 4
  %38 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @RBCTL, align 4
  %42 = load i32, i32* @U_AUTO_DMA_EN_MASK, align 4
  %43 = load i32, i32* @U_AUTO_DMA_DISABLE, align 4
  %44 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCR_REVERSE_SOCKET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %53 = load i32, i32* @WRITE_REG_CMD, align 4
  %54 = load i32, i32* @PETXCFG, align 4
  %55 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %52, i32 %53, i32 %54, i32 176, i32 176)
  br label %61

56:                                               ; preds = %1
  %57 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %58 = load i32, i32* @WRITE_REG_CMD, align 4
  %59 = load i32, i32* @PETXCFG, align 4
  %60 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %57, i32 %58, i32 %59, i32 176, i32 128)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @OBFF_CFG, align 4
  %65 = load i32, i32* @OBFF_EN_MASK, align 4
  %66 = load i32, i32* @OBFF_DISABLE, align 4
  %67 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %69 = load i32, i32* @CMD_TIMEOUT_DEF, align 4
  %70 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %61
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %77 = call i32 @rtsx_pci_init_ocp(%struct.rtsx_pcr* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_init_ocp(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
