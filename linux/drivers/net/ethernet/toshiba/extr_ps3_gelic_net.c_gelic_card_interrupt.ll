; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32, i32, i32*, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@GELIC_CARD_RXINT = common dso_local global i32 0, align 4
@GELIC_CARD_TXINT = common dso_local global i32 0, align 4
@GELIC_CARD_PORT_STATUS_CHANGED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@GELIC_CARD_WLAN_COMMAND_COMPLETED = common dso_local global i32 0, align 4
@GELIC_CARD_WLAN_EVENT_RECEIVED = common dso_local global i32 0, align 4
@GELIC_PORT_WIRELESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gelic_card_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_card_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gelic_card*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.gelic_card*
  store %struct.gelic_card* %10, %struct.gelic_card** %7, align 8
  %11 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %12 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %20 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GELIC_CARD_RXINT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %30 = call i32 @gelic_card_rx_irq_off(%struct.gelic_card* %29)
  %31 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %32 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %31, i32 0, i32 6
  %33 = call i32 @napi_schedule(i32* %32)
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @GELIC_CARD_TXINT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %41 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %40, i32 0, i32 3
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %45 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %47 = call i32 @gelic_card_release_tx_chain(%struct.gelic_card* %46, i32 0)
  %48 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %49 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %50 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gelic_card_kick_txdma(%struct.gelic_card* %48, i32 %52)
  %54 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %55 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %54, i32 0, i32 3
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %39, %34
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @GELIC_CARD_PORT_STATUS_CHANGED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.gelic_card*, %struct.gelic_card** %7, align 8
  %65 = call i32 @gelic_card_get_ether_port_status(%struct.gelic_card* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @gelic_card_rx_irq_off(%struct.gelic_card*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gelic_card_release_tx_chain(%struct.gelic_card*, i32) #1

declare dso_local i32 @gelic_card_kick_txdma(%struct.gelic_card*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gelic_card_get_ether_port_status(%struct.gelic_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
