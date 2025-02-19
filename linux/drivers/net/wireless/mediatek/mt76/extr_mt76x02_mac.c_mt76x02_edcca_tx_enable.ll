; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_edcca_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_edcca_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_AUTO_RSP_CFG = common dso_local global i32 0, align 4
@MT_AUTO_RSP_EN = common dso_local global i32 0, align 4
@MT_TX_PIN_CFG = common dso_local global i32 0, align 4
@MT_TX_PIN_CFG_TXANT = common dso_local global i32 0, align 4
@MT_TX_PIN_CFG_RXANT = common dso_local global i32 0, align 4
@MT_TX_PIN_RFTR_EN = common dso_local global i32 0, align 4
@MT_TX_PIN_TRSW_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x02_edcca_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_edcca_tx_enable(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %10 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %11 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %12 = call i32 @mt76_set(%struct.mt76x02_dev* %9, i32 %10, i32 %11)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %14 = load i32, i32* @MT_AUTO_RSP_CFG, align 4
  %15 = load i32, i32* @MT_AUTO_RSP_EN, align 4
  %16 = call i32 @mt76_set(%struct.mt76x02_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = load i32, i32* @MT_TX_PIN_CFG, align 4
  %19 = call i32 @mt76_rr(%struct.mt76x02_dev* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MT_TX_PIN_CFG_TXANT, align 4
  %21 = load i32, i32* @MT_TX_PIN_CFG_RXANT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MT_TX_PIN_RFTR_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MT_TX_PIN_TRSW_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %30 = load i32, i32* @MT_TX_PIN_CFG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mt76_wr(%struct.mt76x02_dev* %29, i32 %30, i32 %31)
  br label %50

33:                                               ; preds = %2
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %36 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %37 = call i32 @mt76_clear(%struct.mt76x02_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %39 = load i32, i32* @MT_AUTO_RSP_CFG, align 4
  %40 = load i32, i32* @MT_AUTO_RSP_EN, align 4
  %41 = call i32 @mt76_clear(%struct.mt76x02_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = load i32, i32* @MT_TX_PIN_CFG, align 4
  %44 = load i32, i32* @MT_TX_PIN_CFG_TXANT, align 4
  %45 = call i32 @mt76_clear(%struct.mt76x02_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = load i32, i32* @MT_TX_PIN_CFG, align 4
  %48 = load i32, i32* @MT_TX_PIN_CFG_RXANT, align 4
  %49 = call i32 @mt76_clear(%struct.mt76x02_dev* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %33, %8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
