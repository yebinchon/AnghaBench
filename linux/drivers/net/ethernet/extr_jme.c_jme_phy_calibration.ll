; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_phy_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_CTRL1000 = common dso_local global i32 0, align 4
@PHY_GAD_TEST_MODE_MSK = common dso_local global i32 0, align 4
@PHY_GAD_TEST_MODE_1 = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_2_REG = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_2_CALI_MODE_0 = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_2_CALI_LATCH = common dso_local global i32 0, align 4
@JM_PHY_EXT_COMM_2_CALI_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*)* @jme_phy_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_phy_calibration(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = call i32 @jme_phy_off(%struct.jme_adapter* %5)
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %8 = call i32 @jme_phy_on(%struct.jme_adapter* %7)
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MII_CTRL1000, align 4
  %17 = call i32 @jme_mdio_read(i32 %11, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @PHY_GAD_TEST_MODE_MSK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @PHY_GAD_TEST_MODE_1, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MII_CTRL1000, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @jme_mdio_write(i32 %27, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %36 = load i32, i32* @JM_PHY_EXT_COMM_2_REG, align 4
  %37 = call i32 @jme_phy_specreg_read(%struct.jme_adapter* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_MODE_0, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_LATCH, align 4
  %43 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %48 = load i32, i32* @JM_PHY_EXT_COMM_2_REG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @jme_phy_specreg_write(%struct.jme_adapter* %47, i32 %48, i32 %49)
  %51 = call i32 @msleep(i32 20)
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %53 = load i32, i32* @JM_PHY_EXT_COMM_2_REG, align 4
  %54 = call i32 @jme_phy_specreg_read(%struct.jme_adapter* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_ENABLE, align 4
  %56 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_MODE_0, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @JM_PHY_EXT_COMM_2_CALI_LATCH, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %64 = load i32, i32* @JM_PHY_EXT_COMM_2_REG, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @jme_phy_specreg_write(%struct.jme_adapter* %63, i32 %64, i32 %65)
  %67 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MII_CTRL1000, align 4
  %75 = call i32 @jme_mdio_read(i32 %69, i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @PHY_GAD_TEST_MODE_MSK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MII_CTRL1000, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @jme_mdio_write(i32 %82, i32 %86, i32 %87, i32 %88)
  ret i32 0
}

declare dso_local i32 @jme_phy_off(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_on(%struct.jme_adapter*) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @jme_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @jme_phy_specreg_read(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jme_phy_specreg_write(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
