; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_send_cmd_no_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_send_cmd_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32 }

@RTSX_HCBAR = common dso_local global i32 0, align 4
@RTSX_HCBCTLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsx_pci_send_cmd_no_wait(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  %3 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  store i32 -2147483648, i32* %3, align 4
  %4 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %5 = load i32, i32* @RTSX_HCBAR, align 4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %4, i32 %5, i32 %8)
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %11 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 4
  %14 = and i32 %13, 16777215
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 1073741824
  store i32 %18, i32* %3, align 4
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %20 = load i32, i32* @RTSX_HCBCTLR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
