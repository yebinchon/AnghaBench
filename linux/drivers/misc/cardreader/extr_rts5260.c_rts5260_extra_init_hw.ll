; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_extra_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_extra_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.rtsx_cr_option }
%struct.rtsx_cr_option = type { i64 }

@SSC_DIV_N_0 = common dso_local global i32 0, align 4
@RTS5260_AUTOLOAD_CFG4 = common dso_local global i32 0, align 4
@RTS5260_MIMO_DISABLE = common dso_local global i32 0, align 4
@LDO_VCC_CFG0 = common dso_local global i32 0, align 4
@RTS5260_DVCC_TUNE_MASK = common dso_local global i32 0, align 4
@RTS5260_DVCC_33 = common dso_local global i32 0, align 4
@PCLK_CTL = common dso_local global i32 0, align 4
@PCLK_MODE_SEL = common dso_local global i32 0, align 4
@PETXCFG = common dso_local global i32 0, align 4
@FORCE_CLKREQ_DELINK_MASK = common dso_local global i32 0, align 4
@FORCE_CLKREQ_LOW = common dso_local global i32 0, align 4
@FORCE_CLKREQ_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*)* @rts5260_extra_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts5260_extra_init_hw(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca %struct.rtsx_cr_option*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %4, i32 0, i32 0
  store %struct.rtsx_cr_option* %5, %struct.rtsx_cr_option** %3, align 8
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %6, i32 64515, i32 127, i32 7)
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = load i32, i32* @SSC_DIV_N_0, align 4
  %10 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %8, i32 %9, i32 255, i32 93)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = call i32 @rts5260_init_from_cfg(%struct.rtsx_pcr* %11)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %14 = load i32, i32* @RTS5260_AUTOLOAD_CFG4, align 4
  %15 = load i32, i32* @RTS5260_MIMO_DISABLE, align 4
  %16 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %13, i32 %14, i32 255, i32 %15)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %18 = load i32, i32* @LDO_VCC_CFG0, align 4
  %19 = load i32, i32* @RTS5260_DVCC_TUNE_MASK, align 4
  %20 = load i32, i32* @RTS5260_DVCC_33, align 4
  %21 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = load i32, i32* @PCLK_CTL, align 4
  %24 = load i32, i32* @PCLK_MODE_SEL, align 4
  %25 = load i32, i32* @PCLK_MODE_SEL, align 4
  %26 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = call i32 @rts5260_init_hw(%struct.rtsx_pcr* %27)
  %29 = load %struct.rtsx_cr_option*, %struct.rtsx_cr_option** %3, align 8
  %30 = getelementptr inbounds %struct.rtsx_cr_option, %struct.rtsx_cr_option* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %35 = load i32, i32* @PETXCFG, align 4
  %36 = load i32, i32* @FORCE_CLKREQ_DELINK_MASK, align 4
  %37 = load i32, i32* @FORCE_CLKREQ_LOW, align 4
  %38 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %34, i32 %35, i32 %36, i32 %37)
  br label %45

39:                                               ; preds = %1
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %41 = load i32, i32* @PETXCFG, align 4
  %42 = load i32, i32* @FORCE_CLKREQ_DELINK_MASK, align 4
  %43 = load i32, i32* @FORCE_CLKREQ_HIGH, align 4
  %44 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  ret i32 0
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rts5260_init_from_cfg(%struct.rtsx_pcr*) #1

declare dso_local i32 @rts5260_init_hw(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
