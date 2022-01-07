; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx_set_txpwr_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx_set_txpwr_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@MT_PROT_AUTO_TX_CFG = common dso_local global i32 0, align 4
@MT_PROT_AUTO_TX_CFG_PROT_PADJ = common dso_local global i32 0, align 4
@MT_PROT_AUTO_TX_CFG_AUTO_PADJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_tx_set_txpwr_auto(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mt76x02_tx_get_txpwr_adj(%struct.mt76x02_dev* %6, i32 %7, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = load i32, i32* @MT_PROT_AUTO_TX_CFG, align 4
  %18 = load i32, i32* @MT_PROT_AUTO_TX_CFG_PROT_PADJ, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %22 = load i32, i32* @MT_PROT_AUTO_TX_CFG, align 4
  %23 = load i32, i32* @MT_PROT_AUTO_TX_CFG_AUTO_PADJ, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %21, i32 %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @mt76x02_tx_get_txpwr_adj(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
