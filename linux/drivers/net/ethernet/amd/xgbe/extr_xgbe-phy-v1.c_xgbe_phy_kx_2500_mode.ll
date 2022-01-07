; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_kx_2500_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_kx_2500_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32*, i32*, i32*, i32*, i32*, i32* }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_CTRL2 = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_TYPE = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL2_10GBX = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEEDSEL = common dso_local global i32 0, align 4
@MDIO_CTRL1_SPEED1G = common dso_local global i32 0, align 4
@SIR1_SPEED = common dso_local global i32 0, align 4
@DATARATE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_RATE = common dso_local global i32 0, align 4
@WORDMODE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_WORD = common dso_local global i32 0, align 4
@PLLSEL = common dso_local global i32 0, align 4
@XGBE_SPEED_2500_PLL = common dso_local global i32 0, align 4
@CDR_RATE = common dso_local global i32 0, align 4
@XGBE_SPEED_2500 = common dso_local global i64 0, align 8
@TXAMP = common dso_local global i32 0, align 4
@RXTX_REG20 = common dso_local global i32 0, align 4
@BLWC_ENA = common dso_local global i32 0, align 4
@RXTX_REG114 = common dso_local global i32 0, align 4
@PQ_REG = common dso_local global i32 0, align 4
@RXTX_REG129 = common dso_local global i32 0, align 4
@RXDFE_CONFIG = common dso_local global i32 0, align 4
@RXTX_REG22 = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"2.5GbE KX mode set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_kx_2500_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_kx_2500_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
  %7 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  store %struct.xgbe_phy_data* %7, %struct.xgbe_phy_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = load i32, i32* @MDIO_MMD_PCS, align 4
  %10 = load i32, i32* @MDIO_CTRL2, align 4
  %11 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MDIO_PCS_CTRL2_TYPE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MDIO_PCS_CTRL2_10GBX, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = load i32, i32* @MDIO_MMD_PCS, align 4
  %21 = load i32, i32* @MDIO_CTRL2, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = load i32, i32* @MDIO_MMD_PCS, align 4
  %26 = load i32, i32* @MDIO_CTRL1, align 4
  %27 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MDIO_CTRL1_SPEEDSEL, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @MDIO_CTRL1_SPEED1G, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %36 = load i32, i32* @MDIO_MMD_PCS, align 4
  %37 = load i32, i32* @MDIO_CTRL1, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = call i32 @xgbe_phy_pcs_power_cycle(%struct.xgbe_prv_data* %40)
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %43 = call i32 @xgbe_phy_start_ratechange(%struct.xgbe_prv_data* %42)
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = load i32, i32* @SIR1_SPEED, align 4
  %46 = load i32, i32* @DATARATE, align 4
  %47 = load i32, i32* @XGBE_SPEED_2500_RATE, align 4
  %48 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %50 = load i32, i32* @SIR1_SPEED, align 4
  %51 = load i32, i32* @WORDMODE, align 4
  %52 = load i32, i32* @XGBE_SPEED_2500_WORD, align 4
  %53 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = load i32, i32* @SIR1_SPEED, align 4
  %56 = load i32, i32* @PLLSEL, align 4
  %57 = load i32, i32* @XGBE_SPEED_2500_PLL, align 4
  %58 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %60 = load i32, i32* @SIR1_SPEED, align 4
  %61 = load i32, i32* @CDR_RATE, align 4
  %62 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %63 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @XGBE_SPEED_2500, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %59, i32 %60, i32 %61, i32 %67)
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %70 = load i32, i32* @SIR1_SPEED, align 4
  %71 = load i32, i32* @TXAMP, align 4
  %72 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %73 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @XGBE_SPEED_2500, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data* %69, i32 %70, i32 %71, i32 %77)
  %79 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %80 = load i32, i32* @RXTX_REG20, align 4
  %81 = load i32, i32* @BLWC_ENA, align 4
  %82 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %83 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @XGBE_SPEED_2500, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %79, i32 %80, i32 %81, i32 %87)
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = load i32, i32* @RXTX_REG114, align 4
  %91 = load i32, i32* @PQ_REG, align 4
  %92 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %93 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @XGBE_SPEED_2500, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %89, i32 %90, i32 %91, i32 %97)
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = load i32, i32* @RXTX_REG129, align 4
  %101 = load i32, i32* @RXDFE_CONFIG, align 4
  %102 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %103 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @XGBE_SPEED_2500, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data* %99, i32 %100, i32 %101, i32 %107)
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %110 = load i32, i32* @RXTX_REG22, align 4
  %111 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %112 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @XGBE_SPEED_2500, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @XRXTX_IOWRITE(%struct.xgbe_prv_data* %109, i32 %110, i32 %116)
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %119 = call i32 @xgbe_phy_complete_ratechange(%struct.xgbe_prv_data* %118)
  %120 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %121 = load i32, i32* @link, align 4
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %123 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @netif_dbg(%struct.xgbe_prv_data* %120, i32 %121, i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_phy_pcs_power_cycle(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_start_ratechange(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XSIR1_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XRXTX_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XRXTX_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_phy_complete_ratechange(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
