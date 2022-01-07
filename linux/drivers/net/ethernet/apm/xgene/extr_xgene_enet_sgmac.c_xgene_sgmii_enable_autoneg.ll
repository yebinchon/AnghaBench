; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmii_enable_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmii_enable_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@INT_PHY_ADDR = common dso_local global i32 0, align 4
@SGMII_STATUS_ADDR = common dso_local global i32 0, align 4
@AUTO_NEG_COMPLETE = common dso_local global i32 0, align 4
@LINK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Auto-negotiation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_sgmii_enable_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmii_enable_autoneg(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  store i32 10, i32* %4, align 4
  %5 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %6 = call i32 @xgene_sgmii_configure(%struct.xgene_enet_pdata* %5)
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %13 = load i32, i32* @INT_PHY_ADDR, align 4
  %14 = load i32, i32* @SGMII_STATUS_ADDR, align 4
  %15 = ashr i32 %14, 2
  %16 = call i32 @xgene_mii_phy_read(%struct.xgene_enet_pdata* %12, i32 %13, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AUTO_NEG_COMPLETE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LINK_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21, %11
  %28 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %7

29:                                               ; preds = %26, %7
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @AUTO_NEG_COMPLETE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @LINK_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %41 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @xgene_sgmii_configure(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_mii_phy_read(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
