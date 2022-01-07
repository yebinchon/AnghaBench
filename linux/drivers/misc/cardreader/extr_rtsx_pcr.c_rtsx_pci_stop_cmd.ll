; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@RTSX_HCBCTLR = common dso_local global i32 0, align 4
@STOP_CMD = common dso_local global i32 0, align 4
@RTSX_HDBCTLR = common dso_local global i32 0, align 4
@STOP_DMA = common dso_local global i32 0, align 4
@DMACTL = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_stop_cmd(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to void (%struct.rtsx_pcr*)**
  %8 = load void (%struct.rtsx_pcr*)*, void (%struct.rtsx_pcr*)** %7, align 8
  %9 = icmp ne void (%struct.rtsx_pcr*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to void (%struct.rtsx_pcr*)**
  %16 = load void (%struct.rtsx_pcr*)*, void (%struct.rtsx_pcr*)** %15, align 8
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  call void %16(%struct.rtsx_pcr* %17)
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = load i32, i32* @RTSX_HCBCTLR, align 4
  %21 = load i32, i32* @STOP_CMD, align 4
  %22 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %19, i32 %20, i32 %21)
  %23 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %24 = load i32, i32* @RTSX_HDBCTLR, align 4
  %25 = load i32, i32* @STOP_DMA, align 4
  %26 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %23, i32 %24, i32 %25)
  %27 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %28 = load i32, i32* @DMACTL, align 4
  %29 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %27, i32 %28, i32 128, i32 128)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %31 = load i32, i32* @RBCTL, align 4
  %32 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %30, i32 %31, i32 128, i32 128)
  br label %33

33:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
