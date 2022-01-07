; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-phy.c_emac_mdio_write.c"
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
@MDIO_DATA_SHFT = common dso_local global i32 0, align 4
@MDIO_DATA_BMSK = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@EMAC_MDIO_CTRL = common dso_local global i64 0, align 8
@MDIO_BUSY = common dso_local global i32 0, align 4
@MDIO_STATUS_DELAY_TIME = common dso_local global i32 0, align 4
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @emac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.emac_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %13, align 8
  store %struct.emac_adapter* %14, %struct.emac_adapter** %10, align 8
  %15 = load %struct.emac_adapter*, %struct.emac_adapter** %10, align 8
  %16 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EMAC_PHY_STS, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @PHY_ADDR_BMSK, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PHY_ADDR_SHFT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @emac_reg_update32(i64 %19, i32 %20, i32 %23)
  %25 = load i32, i32* @SUP_PREAMBLE, align 4
  %26 = load i32, i32* @MDIO_CLK_25_4, align 4
  %27 = load i32, i32* @MDIO_CLK_SEL_SHFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* @MDIO_CLK_SEL_BMSK, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MDIO_REG_ADDR_SHFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @MDIO_REG_ADDR_BMSK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MDIO_DATA_SHFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @MDIO_DATA_BMSK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  %44 = load i32, i32* @MDIO_START, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %10, align 8
  %48 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EMAC_MDIO_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.emac_adapter*, %struct.emac_adapter** %10, align 8
  %54 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EMAC_MDIO_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MDIO_START, align 4
  %61 = load i32, i32* @MDIO_BUSY, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @MDIO_STATUS_DELAY_TIME, align 4
  %68 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %69 = mul nsw i32 %68, 100
  %70 = call i64 @readl_poll_timeout(i64 %57, i32 %58, i32 %66, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %4
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %5, align 4
  ret i32 %77
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
