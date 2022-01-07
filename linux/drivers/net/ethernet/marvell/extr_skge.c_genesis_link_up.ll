; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i64, i64, %struct.skge_hw* }
%struct.skge_hw = type { i64 }

@XM_MMU_CMD = common dso_local global i32 0, align 4
@FLOW_STAT_NONE = common dso_local global i64 0, align 8
@FLOW_STAT_LOC_SEND = common dso_local global i64 0, align 8
@XM_MMU_IGN_PF = common dso_local global i32 0, align 4
@XM_MODE = common dso_local global i32 0, align 4
@FLOW_STAT_SYMMETRIC = common dso_local global i64 0, align 8
@XM_MAC_PTIME = common dso_local global i32 0, align 4
@XM_PAUSE_MODE = common dso_local global i32 0, align 4
@RX_MFF_CTRL1 = common dso_local global i32 0, align 4
@MFF_ENA_PAUSE = common dso_local global i32 0, align 4
@MFF_DIS_PAUSE = common dso_local global i32 0, align 4
@XM_IMSK = common dso_local global i32 0, align 4
@XM_IS_TXF_UR = common dso_local global i32 0, align 4
@XM_ISRC = common dso_local global i32 0, align 4
@SK_PHY_XMAC = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@XM_MMU_GMII_FD = common dso_local global i32 0, align 4
@SK_PHY_BCOM = common dso_local global i64 0, align 8
@PHY_BCOM_AUX_CTRL = common dso_local global i32 0, align 4
@PHY_B_AC_DIS_PM = common dso_local global i32 0, align 4
@PHY_BCOM_INT_MASK = common dso_local global i32 0, align 4
@PHY_B_DEF_MSK = common dso_local global i32 0, align 4
@XM_MMU_ENA_RX = common dso_local global i32 0, align 4
@XM_MMU_ENA_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @genesis_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_link_up(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 3
  %10 = load %struct.skge_hw*, %struct.skge_hw** %9, align 8
  store %struct.skge_hw* %10, %struct.skge_hw** %3, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @XM_MMU_CMD, align 4
  %17 = call i32 @xm_read16(%struct.skge_hw* %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %19 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FLOW_STAT_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %25 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FLOW_STAT_LOC_SEND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %1
  %30 = load i32, i32* @XM_MMU_IGN_PF, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* @XM_MMU_IGN_PF, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @XM_MMU_CMD, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @xm_write16(%struct.skge_hw* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @XM_MODE, align 4
  %47 = call i32 @xm_read32(%struct.skge_hw* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %49 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FLOW_STAT_SYMMETRIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %38
  %54 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %55 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FLOW_STAT_LOC_SEND, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53, %38
  %60 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @XM_MAC_PTIME, align 4
  %63 = call i32 @xm_write16(%struct.skge_hw* %60, i32 %61, i32 %62, i32 65535)
  %64 = load i32, i32* @XM_PAUSE_MODE, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RX_MFF_CTRL1, align 4
  %70 = call i32 @SK_REG(i32 %68, i32 %69)
  %71 = load i32, i32* @MFF_ENA_PAUSE, align 4
  %72 = call i32 @skge_write16(%struct.skge_hw* %67, i32 %70, i32 %71)
  br label %84

73:                                               ; preds = %53
  %74 = load i32, i32* @XM_PAUSE_MODE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RX_MFF_CTRL1, align 4
  %81 = call i32 @SK_REG(i32 %79, i32 %80)
  %82 = load i32, i32* @MFF_DIS_PAUSE, align 4
  %83 = call i32 @skge_write16(%struct.skge_hw* %78, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %59
  %85 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @XM_MODE, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @xm_write32(%struct.skge_hw* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @XM_IMSK, align 4
  %93 = call i32 @xm_read16(%struct.skge_hw* %90, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @XM_IS_TXF_UR, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @XM_IMSK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @xm_write16(%struct.skge_hw* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @XM_ISRC, align 4
  %106 = call i32 @xm_read16(%struct.skge_hw* %103, i32 %104, i32 %105)
  %107 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @XM_MMU_CMD, align 4
  %110 = call i32 @xm_read16(%struct.skge_hw* %107, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %112 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SK_PHY_XMAC, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %84
  %117 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %118 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @DUPLEX_FULL, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* @XM_MMU_GMII_FD, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %116, %84
  %127 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %128 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SK_PHY_BCOM, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @PHY_BCOM_AUX_CTRL, align 4
  %136 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @PHY_BCOM_AUX_CTRL, align 4
  %139 = call i32 @xm_phy_read(%struct.skge_hw* %136, i32 %137, i32 %138)
  %140 = load i32, i32* @PHY_B_AC_DIS_PM, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = call i32 @xm_phy_write(%struct.skge_hw* %133, i32 %134, i32 %135, i32 %142)
  %144 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @PHY_BCOM_INT_MASK, align 4
  %147 = load i32, i32* @PHY_B_DEF_MSK, align 4
  %148 = call i32 @xm_phy_write(%struct.skge_hw* %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %132, %126
  %150 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @XM_MMU_CMD, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @XM_MMU_ENA_RX, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @XM_MMU_ENA_TX, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @xm_write16(%struct.skge_hw* %150, i32 %151, i32 %152, i32 %157)
  %159 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %160 = call i32 @skge_link_up(%struct.skge_port* %159)
  ret void
}

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_read32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_link_up(%struct.skge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
