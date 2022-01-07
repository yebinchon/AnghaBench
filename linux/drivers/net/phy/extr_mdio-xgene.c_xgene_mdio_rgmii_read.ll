; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_rgmii_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_rgmii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, i64 }
%struct.xgene_mdio_pdata = type { i32 }

@PHY_ADDR = common dso_local global i32 0, align 4
@REG_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_ADDRESS_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_COMMAND_ADDR = common dso_local global i32 0, align 4
@READ_CYCLE_MASK = common dso_local global i32 0, align 4
@MII_MGMT_INDICATORS_ADDR = common dso_local global i32 0, align 4
@BUSY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MII_MGMT read failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MII_MGMT_STATUS_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgene_mdio_rgmii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xgene_mdio_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.xgene_mdio_pdata*
  store %struct.xgene_mdio_pdata* %15, %struct.xgene_mdio_pdata** %8, align 8
  store i32 10, i32* %11, align 4
  %16 = load i32, i32* @PHY_ADDR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SET_VAL(i32 %16, i32 %17)
  %19 = load i32, i32* @REG_ADDR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SET_VAL(i32 %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %8, align 8
  %24 = load i32, i32* @MII_MGMT_ADDRESS_ADDR, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata* %23, i32 %24, i32 %25)
  %27 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %8, align 8
  %28 = load i32, i32* @MII_MGMT_COMMAND_ADDR, align 4
  %29 = load i32, i32* @READ_CYCLE_MASK, align 4
  %30 = call i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %45, %3
  %32 = call i32 @usleep_range(i32 5, i32 10)
  %33 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %8, align 8
  %34 = load i32, i32* @MII_MGMT_INDICATORS_ADDR, align 4
  %35 = call i32 @xgene_mdio_rd_mac(%struct.xgene_mdio_pdata* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BUSY_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %42, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %31, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @BUSY_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %47
  %59 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %8, align 8
  %60 = load i32, i32* @MII_MGMT_STATUS_ADDR, align 4
  %61 = call i32 @xgene_mdio_rd_mac(%struct.xgene_mdio_pdata* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %8, align 8
  %63 = load i32, i32* @MII_MGMT_COMMAND_ADDR, align 4
  %64 = call i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata* %62, i32 %63, i32 0)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @xgene_mdio_rd_mac(%struct.xgene_mdio_pdata*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
