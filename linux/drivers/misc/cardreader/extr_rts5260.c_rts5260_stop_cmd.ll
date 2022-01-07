; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@RTSX_HCBCTLR = common dso_local global i32 0, align 4
@STOP_CMD = common dso_local global i32 0, align 4
@RTSX_HDBCTLR = common dso_local global i32 0, align 4
@STOP_DMA = common dso_local global i32 0, align 4
@RTS5260_DMA_RST_CTL_0 = common dso_local global i32 0, align 4
@RTS5260_DMA_RST = common dso_local global i32 0, align 4
@RTS5260_ADMA3_RST = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@RB_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*)* @rts5260_stop_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_stop_cmd(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = load i32, i32* @RTSX_HCBCTLR, align 4
  %5 = load i32, i32* @STOP_CMD, align 4
  %6 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %3, i32 %4, i32 %5)
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = load i32, i32* @RTSX_HDBCTLR, align 4
  %9 = load i32, i32* @STOP_DMA, align 4
  %10 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %7, i32 %8, i32 %9)
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = load i32, i32* @RTS5260_DMA_RST_CTL_0, align 4
  %13 = load i32, i32* @RTS5260_DMA_RST, align 4
  %14 = load i32, i32* @RTS5260_ADMA3_RST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RTS5260_DMA_RST, align 4
  %17 = load i32, i32* @RTS5260_ADMA3_RST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %11, i32 %12, i32 %15, i32 %18)
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %21 = load i32, i32* @RBCTL, align 4
  %22 = load i32, i32* @RB_FLUSH, align 4
  %23 = load i32, i32* @RB_FLUSH, align 4
  %24 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %20, i32 %21, i32 %22, i32 %23)
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
