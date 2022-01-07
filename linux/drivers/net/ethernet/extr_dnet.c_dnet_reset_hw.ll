; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnet = type { i32 }

@DNET_INTERNAL_MODE_REG = common dso_local global i32 0, align 4
@DNET_INTERNAL_MODE_FCEN = common dso_local global i32 0, align 4
@DNET_FIFO_RX_CMD_AF_TH = common dso_local global i32 0, align 4
@RX_FIFO_TH = common dso_local global i32 0, align 4
@DNET_FIFO_TX_DATA_AE_TH = common dso_local global i32 0, align 4
@TX_FIFO_TH = common dso_local global i32 0, align 4
@DNET_SYS_CTL_RXFIFOFLUSH = common dso_local global i32 0, align 4
@DNET_SYS_CTL_TXFIFOFLUSH = common dso_local global i32 0, align 4
@SYS_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dnet*)* @dnet_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnet_reset_hw(%struct.dnet* %0) #0 {
  %2 = alloca %struct.dnet*, align 8
  store %struct.dnet* %0, %struct.dnet** %2, align 8
  %3 = load %struct.dnet*, %struct.dnet** %2, align 8
  %4 = load i32, i32* @DNET_INTERNAL_MODE_REG, align 4
  %5 = load i32, i32* @DNET_INTERNAL_MODE_FCEN, align 4
  %6 = call i32 @dnet_writew_mac(%struct.dnet* %3, i32 %4, i32 %5)
  %7 = load %struct.dnet*, %struct.dnet** %2, align 8
  %8 = load i32, i32* @DNET_FIFO_RX_CMD_AF_TH, align 4
  %9 = load i32, i32* @RX_FIFO_TH, align 4
  %10 = call i32 @dnet_writel(%struct.dnet* %7, i32 %8, i32 %9)
  %11 = load %struct.dnet*, %struct.dnet** %2, align 8
  %12 = load i32, i32* @DNET_FIFO_TX_DATA_AE_TH, align 4
  %13 = load i32, i32* @TX_FIFO_TH, align 4
  %14 = call i32 @dnet_writel(%struct.dnet* %11, i32 %12, i32 %13)
  %15 = load %struct.dnet*, %struct.dnet** %2, align 8
  %16 = load i32, i32* @DNET_SYS_CTL_RXFIFOFLUSH, align 4
  %17 = load i32, i32* @DNET_SYS_CTL_TXFIFOFLUSH, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SYS_CTL, align 4
  %20 = call i32 @dnet_writel(%struct.dnet* %15, i32 %18, i32 %19)
  %21 = call i32 @msleep(i32 1)
  %22 = load %struct.dnet*, %struct.dnet** %2, align 8
  %23 = load i32, i32* @SYS_CTL, align 4
  %24 = call i32 @dnet_writel(%struct.dnet* %22, i32 0, i32 %23)
  ret void
}

declare dso_local i32 @dnet_writew_mac(%struct.dnet*, i32, i32) #1

declare dso_local i32 @dnet_writel(%struct.dnet*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
