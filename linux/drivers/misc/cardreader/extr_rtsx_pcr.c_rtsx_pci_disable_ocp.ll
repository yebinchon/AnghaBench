; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_disable_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_disable_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtsx_pcr*)* }

@SD_OCP_INT_EN = common dso_local global i32 0, align 4
@SD_DETECT_EN = common dso_local global i32 0, align 4
@REG_OCPCTL = common dso_local global i32 0, align 4
@FPDCTL = common dso_local global i32 0, align 4
@OC_POWER_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_disable_ocp(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %4 = load i32, i32* @SD_OCP_INT_EN, align 4
  %5 = load i32, i32* @SD_DETECT_EN, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %10, align 8
  %12 = icmp ne i32 (%struct.rtsx_pcr*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %15 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.rtsx_pcr*)*, i32 (%struct.rtsx_pcr*)** %17, align 8
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = call i32 %18(%struct.rtsx_pcr* %19)
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %23 = load i32, i32* @REG_OCPCTL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %27 = load i32, i32* @FPDCTL, align 4
  %28 = load i32, i32* @OC_POWER_DOWN, align 4
  %29 = load i32, i32* @OC_POWER_DOWN, align 4
  %30 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
