; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tx_iq_war_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tx_iq_war_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_iq_comp = type { i32, i32, i32, i32 }

@M_20IN40_IQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_tx_iq_war_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_tx_iq_war_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.nphy_iq_comp, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %4, i32 15, i32 4, i32 80, i32 16, %struct.nphy_iq_comp* %3)
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @M_20IN40_IQ, align 8
  %12 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %3, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wlapi_bmac_write_shm(i32 %10, i64 %11, i32 %13)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @M_20IN40_IQ, align 8
  %21 = add nsw i64 %20, 2
  %22 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wlapi_bmac_write_shm(i32 %19, i64 %21, i32 %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @M_20IN40_IQ, align 8
  %31 = add nsw i64 %30, 4
  %32 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wlapi_bmac_write_shm(i32 %29, i64 %31, i32 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @M_20IN40_IQ, align 8
  %41 = add nsw i64 %40, 6
  %42 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wlapi_bmac_write_shm(i32 %39, i64 %41, i32 %43)
  ret void
}

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, %struct.nphy_iq_comp*) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
