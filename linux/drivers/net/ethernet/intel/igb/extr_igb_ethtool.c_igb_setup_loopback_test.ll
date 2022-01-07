; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@E1000_DEV_ID_DH89XXCC_SGMII = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SERDES = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_BACKPLANE = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SFP = common dso_local global i64 0, align 8
@E1000_DEV_ID_I354_SGMII = common dso_local global i64 0, align 8
@E1000_DEV_ID_I354_BACKPLANE_2_5GBPS = common dso_local global i64 0, align 8
@E1000_MPHY_ADDR_CTL = common dso_local global i32 0, align 4
@E1000_MPHY_ADDR_CTL_OFFSET_MASK = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_OFFSET = common dso_local global i32 0, align 4
@E1000_MPHY_DATA = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_DIGINELBEN = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@E1000_SCTL = common dso_local global i32 0, align 4
@E1000_ENABLE_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_LRST = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CONNSW = common dso_local global i32 0, align 4
@E1000_CONNSW_ENRGSRC = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_PCS_CFG0 = common dso_local global i32 0, align 4
@E1000_PCS_CFG_IGN_SD = common dso_local global i32 0, align 4
@E1000_PCS_LCTL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_AN_ENABLE = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FLV_LINK_UP = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSV_1000 = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FDV_FULL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSD = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_setup_loopback_test(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %4, align 8
  %8 = load i32, i32* @E1000_CTRL_EXT, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %144

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SGMII, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SERDES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @E1000_DEV_ID_DH89XXCC_BACKPLANE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SFP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @E1000_DEV_ID_I354_SGMII, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @E1000_DEV_ID_I354_BACKPLANE_2_5GBPS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44, %38, %32, %26, %20, %14
  %51 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %52 = call i32 @rd32(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @E1000_MPHY_ADDR_CTL_OFFSET_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_OFFSET, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @wr32(i32 %58, i32 %59)
  %61 = load i32, i32* @E1000_MPHY_DATA, align 4
  %62 = call i32 @rd32(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_DIGINELBEN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @E1000_MPHY_DATA, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @wr32(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %50, %44
  %70 = load i32, i32* @E1000_RCTL, align 4
  %71 = call i32 @rd32(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @E1000_RCTL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @wr32(i32 %75, i32 %76)
  %78 = load i32, i32* @E1000_SCTL, align 4
  %79 = load i32, i32* @E1000_ENABLE_SERDES_LOOPBACK, align 4
  %80 = call i32 @wr32(i32 %78, i32 %79)
  %81 = load i32, i32* @E1000_CTRL, align 4
  %82 = call i32 @rd32(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %84 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @E1000_CTRL_LRST, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @E1000_CTRL_SLU, align 4
  %92 = load i32, i32* @E1000_CTRL_FD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @E1000_CTRL, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @wr32(i32 %96, i32 %97)
  %99 = load i32, i32* @E1000_CONNSW, align 4
  %100 = call i32 @rd32(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @E1000_CONNSW_ENRGSRC, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @E1000_CONNSW, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @wr32(i32 %105, i32 %106)
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @e1000_82580, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %69
  %115 = load i32, i32* @E1000_PCS_CFG0, align 4
  %116 = call i32 @rd32(i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @E1000_PCS_CFG_IGN_SD, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @E1000_PCS_CFG0, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @wr32(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %114, %69
  %124 = load i32, i32* @E1000_PCS_LCTL, align 4
  %125 = call i32 @rd32(i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* @E1000_PCS_LCTL_AN_ENABLE, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @E1000_PCS_LCTL_FLV_LINK_UP, align 4
  %131 = load i32, i32* @E1000_PCS_LCTL_FSV_1000, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @E1000_PCS_LCTL_FDV_FULL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @E1000_PCS_LCTL_FSD, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @E1000_PCS_LCTL_FORCE_LINK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* @E1000_PCS_LCTL, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @wr32(i32 %141, i32 %142)
  store i32 0, i32* %2, align 4
  br label %147

144:                                              ; preds = %1
  %145 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %146 = call i32 @igb_set_phy_loopback(%struct.igb_adapter* %145)
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %123
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_set_phy_loopback(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
