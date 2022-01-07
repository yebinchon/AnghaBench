; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@INT_PHY_ADDR = common dso_local global i32 0, align 4
@SGMII_BASE_PAGE_ABILITY_ADDR = common dso_local global i32 0, align 4
@PHY_SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i32 0, align 4
@PHY_SPEED_100 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_link_status(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %5 = load i32, i32* @INT_PHY_ADDR, align 4
  %6 = load i32, i32* @SGMII_BASE_PAGE_ABILITY_ADDR, align 4
  %7 = ashr i32 %6, 2
  %8 = call i32 @xgene_mii_phy_read(%struct.xgene_enet_pdata* %4, i32 %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @LINK_SPEED(i32 %9)
  %11 = load i64, i64* @PHY_SPEED_1000, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @SPEED_1000, align 4
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %16 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @LINK_SPEED(i32 %18)
  %20 = load i64, i64* @PHY_SPEED_100, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @SPEED_100, align 4
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @SPEED_10, align 4
  %28 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %29 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @LINK_UP, align 4
  %34 = and i32 %32, %33
  ret i32 %34
}

declare dso_local i32 @xgene_mii_phy_read(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i64 @LINK_SPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
