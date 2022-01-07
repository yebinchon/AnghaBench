; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32, i32 }

@XGENE_ENET1 = common dso_local global i64 0, align 8
@ICM_CONFIG0_REG_0_ADDR = common dso_local global i32 0, align 4
@OFFSET_8 = common dso_local global i32 0, align 4
@ICM_CONFIG2_REG_0_ADDR = common dso_local global i32 0, align 4
@OFFSET_4 = common dso_local global i32 0, align 4
@DEBUG_REG_ADDR = common dso_local global i32 0, align 4
@XG_MCX_ICM_CONFIG0_REG_0_ADDR = common dso_local global i32 0, align 4
@XG_MCX_ICM_CONFIG2_REG_0_ADDR = common dso_local global i32 0, align 4
@XG_DEBUG_REG_ADDR = common dso_local global i32 0, align 4
@MAC_CONFIG_2_ADDR = common dso_local global i32 0, align 4
@INTERFACE_CONTROL_ADDR = common dso_local global i32 0, align 4
@ENET_LHD_MODE = common dso_local global i32 0, align 4
@ENET_GHD_MODE = common dso_local global i32 0, align 4
@CFG_BYPASS_UNISEC_TX = common dso_local global i32 0, align 4
@CFG_BYPASS_UNISEC_RX = common dso_local global i32 0, align 4
@FULL_DUPLEX2 = common dso_local global i32 0, align 4
@PAD_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_sgmac_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmac_set_speed(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %11 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %12 = call i32 @xgene_sgmii_reset(%struct.xgene_enet_pdata* %11)
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XGENE_ENET1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32, i32* @ICM_CONFIG0_REG_0_ADDR, align 4
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OFFSET_8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @ICM_CONFIG2_REG_0_ADDR, align 4
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OFFSET_4, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @DEBUG_REG_ADDR, align 4
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @XG_MCX_ICM_CONFIG0_REG_0_ADDR, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @XG_MCX_ICM_CONFIG2_REG_0_ADDR, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @XG_DEBUG_REG_ADDR, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %18
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %46 = load i32, i32* @MAC_CONFIG_2_ADDR, align 4
  %47 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %49 = load i32, i32* @INTERFACE_CONTROL_ADDR, align 4
  %50 = call i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %52 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %75 [
    i32 129, label %54
    i32 128, label %64
  ]

54:                                               ; preds = %38
  %55 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %9, i32 1)
  %56 = load i32, i32* @ENET_LHD_MODE, align 4
  %57 = load i32, i32* @ENET_GHD_MODE, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = call i32 @CFG_MACMODE_SET(i32* %6, i32 0)
  %63 = call i32 @CFG_WAITASYNCRD_SET(i32* %7, i32 500)
  br label %98

64:                                               ; preds = %38
  %65 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %9, i32 1)
  %66 = load i32, i32* @ENET_GHD_MODE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @ENET_LHD_MODE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = call i32 @CFG_MACMODE_SET(i32* %6, i32 1)
  %74 = call i32 @CFG_WAITASYNCRD_SET(i32* %7, i32 80)
  br label %98

75:                                               ; preds = %38
  %76 = call i32 @ENET_INTERFACE_MODE2_SET(i32* %9, i32 2)
  %77 = load i32, i32* @ENET_LHD_MODE, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @ENET_GHD_MODE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = call i32 @CFG_MACMODE_SET(i32* %6, i32 2)
  %85 = call i32 @CFG_WAITASYNCRD_SET(i32* %7, i32 16)
  %86 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @CFG_BYPASS_UNISEC_TX, align 4
  %90 = load i32, i32* @CFG_BYPASS_UNISEC_RX, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %75, %64, %54
  %99 = load i32, i32* @FULL_DUPLEX2, align 4
  %100 = load i32, i32* @PAD_CRC, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %105 = load i32, i32* @MAC_CONFIG_2_ADDR, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %104, i32 %105, i32 %106)
  %108 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %109 = load i32, i32* @INTERFACE_CONTROL_ADDR, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %108, i32 %109, i32 %110)
  %112 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %112, i32 %113, i32 %114)
  %116 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @xgene_sgmii_reset(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_rd_mac(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @ENET_INTERFACE_MODE2_SET(i32*, i32) #1

declare dso_local i32 @CFG_MACMODE_SET(i32*, i32) #1

declare dso_local i32 @CFG_WAITASYNCRD_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
