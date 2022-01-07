; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, i32 }

@ICM_CONFIG0_REG_0_ADDR = common dso_local global i32 0, align 4
@ICM_CONFIG2_REG_0_ADDR = common dso_local global i32 0, align 4
@MAC_CONFIG_2_ADDR = common dso_local global i32 0, align 4
@INTERFACE_CONTROL_ADDR = common dso_local global i32 0, align 4
@RGMII_REG_0_ADDR = common dso_local global i32 0, align 4
@ENET_LHD_MODE = common dso_local global i32 0, align 4
@ENET_GHD_MODE = common dso_local global i32 0, align 4
@CFG_SPEED_1250 = common dso_local global i32 0, align 4
@DEBUG_REG_ADDR = common dso_local global i32 0, align 4
@CFG_BYPASS_UNISEC_TX = common dso_local global i32 0, align 4
@CFG_BYPASS_UNISEC_RX = common dso_local global i32 0, align 4
@FULL_DUPLEX2 = common dso_local global i32 0, align 4
@PAD_CRC = common dso_local global i32 0, align 4
@LENGTH_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_gmac_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_gmac_set_speed(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %10 = load i32, i32* @ICM_CONFIG0_REG_0_ADDR, align 4
  %11 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %9, i32 %10, i32* %3)
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %13 = load i32, i32* @ICM_CONFIG2_REG_0_ADDR, align 4
  %14 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %12, i32 %13, i32* %4)
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %16 = load i32, i32* @MAC_CONFIG_2_ADDR, align 4
  %17 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %19 = load i32, i32* @INTERFACE_CONTROL_ADDR, align 4
  %20 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %22 = load i32, i32* @RGMII_REG_0_ADDR, align 4
  %23 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %21, i32 %22, i32* %7)
  %24 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %25 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %56 [
    i32 129, label %27
    i32 128, label %41
  ]

27:                                               ; preds = %1
  %28 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %5, i32 1)
  %29 = load i32, i32* @ENET_LHD_MODE, align 4
  %30 = load i32, i32* @ENET_GHD_MODE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = call i32 @CFG_MACMODE_SET(i32* %3, i32 0)
  %36 = call i32 @CFG_WAITASYNCRD_SET(i32* %4, i32 500)
  %37 = load i32, i32* @CFG_SPEED_1250, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %90

41:                                               ; preds = %1
  %42 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %5, i32 1)
  %43 = load i32, i32* @ENET_GHD_MODE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @ENET_LHD_MODE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = call i32 @CFG_MACMODE_SET(i32* %3, i32 1)
  %51 = call i32 @CFG_WAITASYNCRD_SET(i32* %4, i32 80)
  %52 = load i32, i32* @CFG_SPEED_1250, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %90

56:                                               ; preds = %1
  %57 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %5, i32 2)
  %58 = load i32, i32* @ENET_LHD_MODE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @ENET_GHD_MODE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = call i32 @CFG_MACMODE_SET(i32* %3, i32 2)
  %66 = call i32 @CFG_WAITASYNCRD_SET(i32* %4, i32 0)
  %67 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %68 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CFG_TXCLK_MUXSEL0_SET(i32* %7, i32 %69)
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %72 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CFG_RXCLK_MUXSEL0_SET(i32* %7, i32 %73)
  %75 = load i32, i32* @CFG_SPEED_1250, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %79 = load i32, i32* @DEBUG_REG_ADDR, align 4
  %80 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %78, i32 %79, i32* %8)
  %81 = load i32, i32* @CFG_BYPASS_UNISEC_TX, align 4
  %82 = load i32, i32* @CFG_BYPASS_UNISEC_RX, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %87 = load i32, i32* @DEBUG_REG_ADDR, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %56, %41, %27
  %91 = load i32, i32* @FULL_DUPLEX2, align 4
  %92 = load i32, i32* @PAD_CRC, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @LENGTH_CHK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %99 = load i32, i32* @MAC_CONFIG_2_ADDR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %98, i32 %99, i32 %100)
  %102 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %103 = load i32, i32* @INTERFACE_CONTROL_ADDR, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %102, i32 %103, i32 %104)
  %106 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %107 = load i32, i32* @RGMII_REG_0_ADDR, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %106, i32 %107, i32 %108)
  %110 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %111 = call i32 @xgene_enet_configure_clock(%struct.xgene_enet_pdata* %110)
  %112 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %113 = load i32, i32* @ICM_CONFIG0_REG_0_ADDR, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %112, i32 %113, i32 %114)
  %116 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %117 = load i32, i32* @ICM_CONFIG2_REG_0_ADDR, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @ENET_INTERFACE_MODE2_SET(i32*, i32) #1

declare dso_local i32 @CFG_MACMODE_SET(i32*, i32) #1

declare dso_local i32 @CFG_WAITASYNCRD_SET(i32*, i32) #1

declare dso_local i32 @CFG_TXCLK_MUXSEL0_SET(i32*, i32) #1

declare dso_local i32 @CFG_RXCLK_MUXSEL0_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_configure_clock(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
