; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_stop_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_stop_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@REG_RXQ_CTRL = common dso_local global i32 0, align 4
@RXQ_CTRL_EN = common dso_local global i32 0, align 4
@REG_TXQ_CTRL = common dso_local global i32 0, align 4
@TXQ_CTRL_EN = common dso_local global i32 0, align 4
@IDLE_STATUS_RXQ_BUSY = common dso_local global i32 0, align 4
@IDLE_STATUS_TXQ_BUSY = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_TX_EN = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@IDLE_STATUS_TXMAC_BUSY = common dso_local global i32 0, align 4
@IDLE_STATUS_RXMAC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*)* @atl1c_stop_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_stop_mac(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %4 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %5 = load i32, i32* @REG_RXQ_CTRL, align 4
  %6 = call i32 @AT_READ_REG(%struct.atl1c_hw* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @RXQ_CTRL_EN, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %12 = load i32, i32* @REG_RXQ_CTRL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %16 = load i32, i32* @REG_TXQ_CTRL, align 4
  %17 = call i32 @AT_READ_REG(%struct.atl1c_hw* %15, i32 %16, i32* %3)
  %18 = load i32, i32* @TXQ_CTRL_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %23 = load i32, i32* @REG_TXQ_CTRL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %27 = load i32, i32* @IDLE_STATUS_RXQ_BUSY, align 4
  %28 = load i32, i32* @IDLE_STATUS_TXQ_BUSY, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @atl1c_wait_until_idle(%struct.atl1c_hw* %26, i32 %29)
  %31 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %32 = load i32, i32* @REG_MAC_CTRL, align 4
  %33 = call i32 @AT_READ_REG(%struct.atl1c_hw* %31, i32 %32, i32* %3)
  %34 = load i32, i32* @MAC_CTRL_TX_EN, align 4
  %35 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %41 = load i32, i32* @REG_MAC_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %45 = load i32, i32* @IDLE_STATUS_TXMAC_BUSY, align 4
  %46 = load i32, i32* @IDLE_STATUS_RXMAC_BUSY, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @atl1c_wait_until_idle(%struct.atl1c_hw* %44, i32 %47)
  %49 = trunc i64 %48 to i32
  ret i32 %49
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i64 @atl1c_wait_until_idle(%struct.atl1c_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
