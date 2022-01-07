; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_rgmii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-xgene.c_xgene_mdio_rgmii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, i64 }
%struct.xgene_mdio_pdata = type { i32 }

@PHY_ADDR = common dso_local global i32 0, align 4
@REG_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_ADDRESS_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_CONTROL_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_INDICATORS_ADDR = common dso_local global i32 0, align 4
@BUSY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MII_MGMT write failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgene_mdio_rgmii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xgene_mdio_pdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xgene_mdio_pdata*
  store %struct.xgene_mdio_pdata* %17, %struct.xgene_mdio_pdata** %10, align 8
  store i32 10, i32* %13, align 4
  %18 = load i32, i32* @PHY_ADDR, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @SET_VAL(i32 %18, i32 %19)
  %21 = load i32, i32* @REG_ADDR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @SET_VAL(i32 %21, i32 %22)
  %24 = or i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %10, align 8
  %26 = load i32, i32* @MII_MGMT_ADDRESS_ADDR, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata* %25, i32 %26, i32 %27)
  %29 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %10, align 8
  %30 = load i32, i32* @MII_MGMT_CONTROL_ADDR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @xgene_mdio_wr_mac(%struct.xgene_mdio_pdata* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %47, %4
  %34 = call i32 @usleep_range(i32 5, i32 10)
  %35 = load %struct.xgene_mdio_pdata*, %struct.xgene_mdio_pdata** %10, align 8
  %36 = load i32, i32* @MII_MGMT_INDICATORS_ADDR, align 4
  %37 = call i32 @xgene_mdio_rd_mac(%struct.xgene_mdio_pdata* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @BUSY_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %13, align 4
  %46 = icmp ne i32 %44, 0
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %33, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @BUSY_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %56 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %5, align 4
  ret i32 %62
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
