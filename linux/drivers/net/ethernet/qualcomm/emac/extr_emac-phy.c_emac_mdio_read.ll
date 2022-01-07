; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.emac_adapter* }
%struct.emac_adapter = type { i64 }

@EMAC_PHY_STS = common dso_local global i64 0, align 8
@PHY_ADDR_BMSK = common dso_local global i32 0, align 4
@PHY_ADDR_SHFT = common dso_local global i32 0, align 4
@SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_SHFT = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_BMSK = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_SHFT = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_BMSK = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_RD_NWR = common dso_local global i32 0, align 4
@EMAC_MDIO_CTRL = common dso_local global i64 0, align 8
@MDIO_BUSY = common dso_local global i32 0, align 4
@MDIO_STATUS_DELAY_TIME = common dso_local global i32 0, align 4
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MDIO_DATA_SHFT = common dso_local global i32 0, align 4
@MDIO_DATA_BMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @emac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.emac_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.emac_adapter*, %struct.emac_adapter** %11, align 8
  store %struct.emac_adapter* %12, %struct.emac_adapter** %8, align 8
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EMAC_PHY_STS, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @PHY_ADDR_BMSK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PHY_ADDR_SHFT, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @emac_reg_update32(i64 %17, i32 %18, i32 %21)
  %23 = load i32, i32* @SUP_PREAMBLE, align 4
  %24 = load i32, i32* @MDIO_CLK_25_4, align 4
  %25 = load i32, i32* @MDIO_CLK_SEL_SHFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @MDIO_CLK_SEL_BMSK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MDIO_REG_ADDR_SHFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @MDIO_REG_ADDR_BMSK, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* @MDIO_START, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MDIO_RD_NWR, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.emac_adapter*, %struct.emac_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EMAC_MDIO_CTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EMAC_MDIO_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MDIO_START, align 4
  %55 = load i32, i32* @MDIO_BUSY, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @MDIO_STATUS_DELAY_TIME, align 4
  %62 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %63 = mul nsw i32 %62, 100
  %64 = call i64 @readl_poll_timeout(i64 %51, i32 %52, i32 %60, i32 %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %75

69:                                               ; preds = %3
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @MDIO_DATA_SHFT, align 4
  %72 = ashr i32 %70, %71
  %73 = load i32, i32* @MDIO_DATA_BMSK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @emac_reg_update32(i64, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
