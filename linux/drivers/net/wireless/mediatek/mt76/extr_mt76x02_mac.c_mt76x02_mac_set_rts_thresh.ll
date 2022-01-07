; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_set_rts_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_set_rts_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@MT_PROT_CFG_CTRL = common dso_local global i32 0, align 4
@MT_PROT_CFG_RTS_THRESH = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG = common dso_local global i32 0, align 4
@MT_TX_RTS_CFG_THRESH = common dso_local global i32 0, align 4
@MT_CCK_PROT_CFG = common dso_local global i32 0, align 4
@MT_OFDM_PROT_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_set_rts_thresh(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @MT_PROT_CFG_CTRL, align 4
  %10 = call i32 @FIELD_PREP(i32 %9, i32 1)
  %11 = load i32, i32* @MT_PROT_CFG_RTS_THRESH, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = load i32, i32* @MT_TX_RTS_CFG, align 4
  %16 = load i32, i32* @MT_TX_RTS_CFG_THRESH, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = load i32, i32* @MT_CCK_PROT_CFG, align 4
  %21 = load i32, i32* @MT_PROT_CFG_CTRL, align 4
  %22 = load i32, i32* @MT_PROT_CFG_RTS_THRESH, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mt76_rmw(%struct.mt76x02_dev* %19, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %27 = load i32, i32* @MT_OFDM_PROT_CFG, align 4
  %28 = load i32, i32* @MT_PROT_CFG_CTRL, align 4
  %29 = load i32, i32* @MT_PROT_CFG_RTS_THRESH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mt76_rmw(%struct.mt76x02_dev* %26, i32 %27, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
