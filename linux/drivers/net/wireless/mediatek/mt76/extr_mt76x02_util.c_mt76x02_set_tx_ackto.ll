; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_set_tx_ackto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_set_tx_ackto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, i64 }

@MT_BKOFF_SLOT_CFG = common dso_local global i32 0, align 4
@MT_BKOFF_SLOT_CFG_SLOTTIME = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG = common dso_local global i32 0, align 4
@MT_XIFS_TIME_CFG_OFDM_SIFS = common dso_local global i32 0, align 4
@MT_TX_TIMEOUT_CFG = common dso_local global i32 0, align 4
@MT_TX_TIMEOUT_CFG_ACKTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_set_tx_ackto(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 3, %11
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = load i32, i32* @MT_BKOFF_SLOT_CFG, align 4
  %18 = load i32, i32* @MT_BKOFF_SLOT_CFG_SLOTTIME, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %16, i32 %17, i32 %18, i64 %19)
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = load i32, i32* @MT_XIFS_TIME_CFG, align 4
  %23 = load i32, i32* @MT_XIFS_TIME_CFG_OFDM_SIFS, align 4
  %24 = call i64 @mt76_get_field(%struct.mt76x02_dev* %21, i32 %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %3, align 8
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %29 = load i32, i32* @MT_TX_TIMEOUT_CFG, align 4
  %30 = load i32, i32* @MT_TX_TIMEOUT_CFG_ACKTO, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %28, i32 %29, i32 %30, i64 %31)
  ret void
}

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i64) #1

declare dso_local i64 @mt76_get_field(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
