; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_process_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_process_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SD_OC_NOW = common dso_local global i32 0, align 4
@SD_OC_EVER = common dso_local global i32 0, align 4
@DV3318_OCP_NOW = common dso_local global i32 0, align 4
@DV3318_OCP_EVER = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_process_ocp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_process_ocp(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %11, i32 0, i32 0
  %13 = call i32 @rtsx_pci_get_ocpstat(%struct.rtsx_pcr* %10, i32* %12)
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %15, i32 0, i32 1
  %17 = call i32 @rts5260_get_ocpstat2(%struct.rtsx_pcr* %14, i32* %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SD_OC_NOW, align 4
  %22 = load i32, i32* @SD_OC_EVER, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %9
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DV3318_OCP_NOW, align 4
  %31 = load i32, i32* @DV3318_OCP_EVER, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26, %9
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %37 = load i32, i32* @RTSX_SD_CARD, align 4
  %38 = call i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr* %36, i32 %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %40 = load i32, i32* @CARD_OE, align 4
  %41 = load i32, i32* @SD_OUTPUT_EN, align 4
  %42 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %44 = call i32 @rtsx_pci_clear_ocpstat(%struct.rtsx_pcr* %43)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %8, %35, %26
  ret void
}

declare dso_local i32 @rtsx_pci_get_ocpstat(%struct.rtsx_pcr*, i32*) #1

declare dso_local i32 @rts5260_get_ocpstat2(%struct.rtsx_pcr*, i32*) #1

declare dso_local i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_clear_ocpstat(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
