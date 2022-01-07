; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_WF_RMAC_RMCR = common dso_local global i32 0, align 4
@MT_WF_RMAC_RMCR_SMPS_MODE = common dso_local global i32 0, align 4
@MT_WF_RMAC_RMCR_RX_STREAMS = common dso_local global i32 0, align 4
@MT_TMAC_TCR = common dso_local global i32 0, align 4
@MT_TMAC_TCR_TX_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_phy_init(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %5 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @hweight8(i32 %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %13 = load i32, i32* @MT_WF_RMAC_RMCR, align 4
  %14 = load i32, i32* @MT_WF_RMAC_RMCR_SMPS_MODE, align 4
  %15 = load i32, i32* @MT_WF_RMAC_RMCR_RX_STREAMS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MT_WF_RMAC_RMCR_SMPS_MODE, align 4
  %18 = call i32 @FIELD_PREP(i32 %17, i32 3)
  %19 = load i32, i32* @MT_WF_RMAC_RMCR_RX_STREAMS, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @FIELD_PREP(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  %23 = call i32 @mt76_rmw(%struct.mt7603_dev* %12, i32 %13, i32 %16, i32 %22)
  %24 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %25 = load i32, i32* @MT_TMAC_TCR, align 4
  %26 = load i32, i32* @MT_TMAC_TCR_TX_STREAMS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %30 = call i32 @MT_AGC(i32 0)
  %31 = call i8* @mt76_rr(%struct.mt7603_dev* %29, i32 %30)
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %35 = call i32 @MT_AGC(i32 3)
  %36 = call i8* @mt76_rr(%struct.mt7603_dev* %34, i32 %35)
  %37 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %38 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  ret void
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7603_dev*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i32, i32, i32) #1

declare dso_local i8* @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @MT_AGC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
