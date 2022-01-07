; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64 }

@EMAC_RXQ_CTRL_0 = common dso_local global i64 0, align 8
@RXQ_EN = common dso_local global i32 0, align 4
@EMAC_TXQ_CTRL_0 = common dso_local global i64 0, align 8
@TXQ_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTRL = common dso_local global i64 0, align 8
@TXEN = common dso_local global i32 0, align 4
@RXEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_stop(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %3 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @EMAC_RXQ_CTRL_0, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @RXQ_EN, align 4
  %9 = call i32 @emac_reg_update32(i64 %7, i32 %8, i32 0)
  %10 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EMAC_TXQ_CTRL_0, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @TXQ_EN, align 4
  %16 = call i32 @emac_reg_update32(i64 %14, i32 %15, i32 0)
  %17 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EMAC_MAC_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @TXEN, align 4
  %23 = load i32, i32* @RXEN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @emac_reg_update32(i64 %21, i32 %24, i32 0)
  %26 = call i32 @usleep_range(i32 1000, i32 1050)
  ret void
}

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
