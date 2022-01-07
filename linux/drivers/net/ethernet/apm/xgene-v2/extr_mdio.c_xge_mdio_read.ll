; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mdio.c_xge_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mdio.c_xge_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.xge_pdata* }
%struct.xge_pdata = type { i32 }

@PHY_ADDR = common dso_local global i32 0, align 4
@REG_ADDR = common dso_local global i32 0, align 4
@MII_MGMT_ADDRESS = common dso_local global i32 0, align 4
@MII_MGMT_COMMAND = common dso_local global i32 0, align 4
@MII_READ_CYCLE = common dso_local global i32 0, align 4
@MII_MGMT_INDICATORS = common dso_local global i32 0, align 4
@MII_MGMT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MII_MGMT read failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MII_MGMT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @xge_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xge_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 1
  %15 = load %struct.xge_pdata*, %struct.xge_pdata** %14, align 8
  store %struct.xge_pdata* %15, %struct.xge_pdata** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 10, i32* %12, align 4
  %16 = load i32, i32* @PHY_ADDR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SET_REG_BITS(i32* %11, i32 %16, i32 %17)
  %19 = load i32, i32* @REG_ADDR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @SET_REG_BITS(i32* %11, i32 %19, i32 %20)
  %22 = load %struct.xge_pdata*, %struct.xge_pdata** %8, align 8
  %23 = load i32, i32* @MII_MGMT_ADDRESS, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @xge_wr_csr(%struct.xge_pdata* %22, i32 %23, i32 %24)
  %26 = load %struct.xge_pdata*, %struct.xge_pdata** %8, align 8
  %27 = load i32, i32* @MII_MGMT_COMMAND, align 4
  %28 = load i32, i32* @MII_READ_CYCLE, align 4
  %29 = call i32 @xge_wr_csr(%struct.xge_pdata* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %44, %3
  %31 = call i32 @usleep_range(i32 5, i32 10)
  %32 = load %struct.xge_pdata*, %struct.xge_pdata** %8, align 8
  %33 = load i32, i32* @MII_MGMT_INDICATORS, align 4
  %34 = call i32 @xge_rd_csr(%struct.xge_pdata* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MII_MGMT_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %41, 0
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i1 [ false, %35 ], [ %43, %40 ]
  br i1 %45, label %30, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MII_MGMT_BUSY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %53 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.xge_pdata*, %struct.xge_pdata** %8, align 8
  %59 = load i32, i32* @MII_MGMT_STATUS, align 4
  %60 = call i32 @xge_rd_csr(%struct.xge_pdata* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.xge_pdata*, %struct.xge_pdata** %8, align 8
  %62 = load i32, i32* @MII_MGMT_COMMAND, align 4
  %63 = call i32 @xge_wr_csr(%struct.xge_pdata* %61, i32 %62, i32 0)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %51
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @SET_REG_BITS(i32*, i32, i32) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @xge_rd_csr(%struct.xge_pdata*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
