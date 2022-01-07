; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_process_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_process_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.rtsx_pcr*)* }

@SD_OC_NOW = common dso_local global i32 0, align 4
@SD_OC_EVER = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@SD_OUTPUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rtsx_pci_process_ocp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_pci_process_ocp(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %6, align 8
  %8 = icmp ne i32 (%struct.rtsx_pcr*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %13, align 8
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %16 = call i32 %14(%struct.rtsx_pcr* %15)
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 0
  %28 = call i32 @rtsx_pci_get_ocpstat(%struct.rtsx_pcr* %25, i32* %27)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %30 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SD_OC_NOW, align 4
  %33 = load i32, i32* @SD_OC_EVER, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %24
  %38 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %39 = load i32, i32* @RTSX_SD_CARD, align 4
  %40 = call i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr* %38, i32 %39)
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %42 = load i32, i32* @CARD_OE, align 4
  %43 = load i32, i32* @SD_OUTPUT_EN, align 4
  %44 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %46 = call i32 @rtsx_pci_clear_ocpstat(%struct.rtsx_pcr* %45)
  %47 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %48 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %37, %24
  br label %50

50:                                               ; preds = %23, %49, %9
  ret void
}

declare dso_local i32 @rtsx_pci_get_ocpstat(%struct.rtsx_pcr*, i32*) #1

declare dso_local i32 @rtsx_pci_card_power_off(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_clear_ocpstat(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
