; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethoc = type { i32 }

@MODER = common dso_local global i32 0, align 4
@MODER_CRC = common dso_local global i32 0, align 4
@MODER_PAD = common dso_local global i32 0, align 4
@MODER_FULLD = common dso_local global i32 0, align 4
@IPGT = common dso_local global i32 0, align 4
@INT_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethoc*)* @ethoc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_reset(%struct.ethoc* %0) #0 {
  %2 = alloca %struct.ethoc*, align 8
  %3 = alloca i32, align 4
  store %struct.ethoc* %0, %struct.ethoc** %2, align 8
  %4 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %5 = call i32 @ethoc_disable_rx_and_tx(%struct.ethoc* %4)
  %6 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %7 = load i32, i32* @MODER, align 4
  %8 = call i32 @ethoc_read(%struct.ethoc* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @MODER_CRC, align 4
  %10 = load i32, i32* @MODER_PAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %15 = load i32, i32* @MODER, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ethoc_write(%struct.ethoc* %14, i32 %15, i32 %16)
  %18 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %19 = load i32, i32* @MODER, align 4
  %20 = call i32 @ethoc_read(%struct.ethoc* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @MODER_FULLD, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %25 = load i32, i32* @MODER, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ethoc_write(%struct.ethoc* %24, i32 %25, i32 %26)
  %28 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %29 = load i32, i32* @IPGT, align 4
  %30 = call i32 @ethoc_write(%struct.ethoc* %28, i32 %29, i32 21)
  %31 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %32 = load i32, i32* @INT_MASK_ALL, align 4
  %33 = call i32 @ethoc_ack_irq(%struct.ethoc* %31, i32 %32)
  %34 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %35 = load i32, i32* @INT_MASK_ALL, align 4
  %36 = call i32 @ethoc_enable_irq(%struct.ethoc* %34, i32 %35)
  %37 = load %struct.ethoc*, %struct.ethoc** %2, align 8
  %38 = call i32 @ethoc_enable_rx_and_tx(%struct.ethoc* %37)
  ret i32 0
}

declare dso_local i32 @ethoc_disable_rx_and_tx(%struct.ethoc*) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_write(%struct.ethoc*, i32, i32) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_enable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_enable_rx_and_tx(%struct.ethoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
