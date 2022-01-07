; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_mii_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_mii_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@MII_MGMT_ADDRESS_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_COMMAND_ADDR = common dso_local global i32 0, align 4
@READ_CYCLE_MASK = common dso_local global i32 0, align 4
@MII_MGMT_INDICATORS_ADDR = common dso_local global i32 0, align 4
@BUSY_MASK = common dso_local global i32 0, align 4
@MII_MGMT_STATUS_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MII_MGMT read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*, i32, i32)* @xgene_mii_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_mii_phy_read(%struct.xgene_enet_pdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PHY_ADDR(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @REG_ADDR(i32 %14)
  %16 = or i32 %13, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %18 = load i32, i32* @MII_MGMT_ADDRESS_ADDR, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %17, i32 %18, i32 %19)
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %22 = load i32, i32* @MII_MGMT_COMMAND_ADDR, align 4
  %23 = load i32, i32* @READ_CYCLE_MASK, align 4
  %24 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %21, i32 %22, i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %46, %3
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %30 = load i32, i32* @MII_MGMT_INDICATORS_ADDR, align 4
  %31 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @BUSY_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %38 = load i32, i32* @MII_MGMT_STATUS_ADDR, align 4
  %39 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %41 = load i32, i32* @MII_MGMT_COMMAND_ADDR, align 4
  %42 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %40, i32 %41, i32 0)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %28
  %45 = call i32 @usleep_range(i32 10, i32 20)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %51 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netdev_err(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @PHY_ADDR(i32) #1

declare dso_local i32 @REG_ADDR(i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
