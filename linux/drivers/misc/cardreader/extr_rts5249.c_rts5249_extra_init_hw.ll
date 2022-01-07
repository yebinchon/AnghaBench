; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_extra_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts5249_extra_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@L1SUB_CONFIG3 = common dso_local global i32 0, align 4
@GPIO_CTL = common dso_local global i32 0, align 4
@ASPM_FORCE_CTL = common dso_local global i32 0, align 4
@LDO_PWR_SEL = common dso_local global i32 0, align 4
@OLT_LED_CTL = common dso_local global i32 0, align 4
@OUTPUT_3V3 = common dso_local global i32 0, align 4
@PCR_REVERSE_SOCKET = common dso_local global i32 0, align 4
@PETXCFG = common dso_local global i32 0, align 4
@FORCE_CLKREQ_DELINK_MASK = common dso_local global i32 0, align 4
@FORCE_CLKREQ_LOW = common dso_local global i32 0, align 4
@FORCE_CLKREQ_HIGH = common dso_local global i32 0, align 4
@CMD_TIMEOUT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts5249_extra_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5249_extra_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %4, i32 0, i32 1
  store %struct.rtsx_cr_option* %5, %struct.rtsx_cr_option** %3, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = call i32 @rts5249_init_from_cfg(%struct.rtsx_pcr* %6)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = call i32 @rts5249_init_from_hw(%struct.rtsx_pcr* %8)
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %10)
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %13 = load i32, i32* @WRITE_REG_CMD, align 4
  %14 = load i32, i32* @L1SUB_CONFIG3, align 4
  %15 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %12, i32 %13, i32 %14, i32 255, i32 0)
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @GPIO_CTL, align 4
  %19 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %16, i32 %17, i32 %18, i32 2, i32 2)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = load i32, i32* @WRITE_REG_CMD, align 4
  %22 = load i32, i32* @ASPM_FORCE_CTL, align 4
  %23 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 63, i32 0)
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @LDO_PWR_SEL, align 4
  %27 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %24, i32 %25, i32 %26, i32 3, i32 0)
  %28 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %29 = load i32, i32* @WRITE_REG_CMD, align 4
  %30 = load i32, i32* @LDO_PWR_SEL, align 4
  %31 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %28, i32 %29, i32 %30, i32 3, i32 1)
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %33 = load i32, i32* @WRITE_REG_CMD, align 4
  %34 = load i32, i32* @OLT_LED_CTL, align 4
  %35 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %32, i32 %33, i32 %34, i32 15, i32 2)
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %37 = load i32, i32* @OUTPUT_3V3, align 4
  %38 = call i32 @rts5249_fill_driving(%struct.rtsx_pcr* %36, i32 %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PCR_REVERSE_SOCKET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %47 = load i32, i32* @WRITE_REG_CMD, align 4
  %48 = load i32, i32* @PETXCFG, align 4
  %49 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %46, i32 %47, i32 %48, i32 176, i32 176)
  br label %55

50:                                               ; preds = %1
  %51 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %52 = load i32, i32* @WRITE_REG_CMD, align 4
  %53 = load i32, i32* @PETXCFG, align 4
  %54 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %51, i32 %52, i32 %53, i32 176, i32 128)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %57 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %62 = load i32, i32* @WRITE_REG_CMD, align 4
  %63 = load i32, i32* @PETXCFG, align 4
  %64 = load i32, i32* @FORCE_CLKREQ_DELINK_MASK, align 4
  %65 = load i32, i32* @FORCE_CLKREQ_LOW, align 4
  %66 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %69 = load i32, i32* @WRITE_REG_CMD, align 4
  %70 = load i32, i32* @PETXCFG, align 4
  %71 = load i32, i32* @FORCE_CLKREQ_DELINK_MASK, align 4
  %72 = load i32, i32* @FORCE_CLKREQ_HIGH, align 4
  %73 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %76 = load i32, i32* @CMD_TIMEOUT_DEF, align 4
  %77 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %75, i32 %76)
  ret i32 %77
}

declare dso_local i32 @rts5249_init_from_cfg(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5249_init_from_hw(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rts5249_fill_driving(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
