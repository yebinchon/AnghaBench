; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_mii_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_mii_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@MII_MGMT_ADDRESS_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_CONTROL_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_INDICATORS_ADDR = common dso_local global i32 0, align 4
@BUSY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MII_MGMT write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32, i32, i32)* @xgene_mii_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_mii_phy_write(%struct.xgene_enet_pdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PHY_ADDR(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @REG_ADDR(i32 %15)
  %17 = or i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %19 = load i32, i32* @MII_MGMT_ADDRESS_ADDR, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @PHY_CONTROL(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %25 = load i32, i32* @MII_MGMT_CONTROL_ADDR, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %24, i32 %25, i32 %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %42, %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %33 = load i32, i32* @MII_MGMT_INDICATORS_ADDR, align 4
  %34 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @BUSY_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %50

40:                                               ; preds = %31
  %41 = call i32 @usleep_range(i32 10, i32 20)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %47 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @PHY_ADDR(i32) #1

declare dso_local i32 @REG_ADDR(i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @PHY_CONTROL(i32) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
