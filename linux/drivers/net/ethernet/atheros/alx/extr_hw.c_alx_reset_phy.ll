; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i64 }

@ALX_PHY_CTRL = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_DSPRST_OUT = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_IDDQ = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_GATE_25M = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_POWER_DOWN = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_CLS = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_RST_ANALOG = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@ALX_PHY_CTRL_DSPRST_TO = common dso_local global i32 0, align 4
@ALX_MIIDBG_LEGCYPS = common dso_local global i32 0, align 4
@ALX_LEGCYPS_DEF = common dso_local global i32 0, align 4
@ALX_MIIDBG_SYSMODCTRL = common dso_local global i32 0, align 4
@ALX_SYSMODCTRL_IECHOADJ_DEF = common dso_local global i32 0, align 4
@ALX_MIIEXT_PCS = common dso_local global i32 0, align 4
@ALX_MIIEXT_VDRVBIAS = common dso_local global i32 0, align 4
@ALX_VDRVBIAS_DEF = common dso_local global i32 0, align 4
@ALX_LPI_CTRL = common dso_local global i32 0, align 4
@ALX_LPI_CTRL_EN = common dso_local global i32 0, align 4
@ALX_MIIEXT_ANEG = common dso_local global i32 0, align 4
@ALX_MIIEXT_LOCAL_EEEADV = common dso_local global i32 0, align 4
@ALX_MIIDBG_TST10BTCFG = common dso_local global i32 0, align 4
@ALX_TST10BTCFG_DEF = common dso_local global i32 0, align 4
@ALX_MIIDBG_SRDSYSMOD = common dso_local global i32 0, align 4
@ALX_SRDSYSMOD_DEF = common dso_local global i32 0, align 4
@ALX_MIIDBG_TST100BTCFG = common dso_local global i32 0, align 4
@ALX_TST100BTCFG_DEF = common dso_local global i32 0, align 4
@ALX_MIIDBG_ANACTRL = common dso_local global i32 0, align 4
@ALX_ANACTRL_DEF = common dso_local global i32 0, align 4
@ALX_MIIDBG_GREENCFG2 = common dso_local global i32 0, align 4
@ALX_GREENCFG2_GATE_DFSE_EN = common dso_local global i32 0, align 4
@ALX_MIIEXT_NLP78 = common dso_local global i32 0, align 4
@ALX_MIIEXT_NLP78_120M_DEF = common dso_local global i32 0, align 4
@ALX_MIIEXT_S3DIG10 = common dso_local global i32 0, align 4
@ALX_MIIEXT_S3DIG10_DEF = common dso_local global i32 0, align 4
@ALX_MIIEXT_CLDCTRL3 = common dso_local global i32 0, align 4
@ALX_CLDCTRL3_BP_CABLE1TH_DET_GT = common dso_local global i32 0, align 4
@ALX_GREENCFG2_BP_GREEN = common dso_local global i32 0, align 4
@ALX_MIIEXT_CLDCTRL5 = common dso_local global i32 0, align 4
@ALX_CLDCTRL5_BP_VD_HLFBIAS = common dso_local global i32 0, align 4
@ALX_MII_IER = common dso_local global i32 0, align 4
@ALX_IER_LINK_UP = common dso_local global i32 0, align 4
@ALX_IER_LINK_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_reset_phy(%struct.alx_hw* %0) #0 {
  %2 = alloca %struct.alx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %2, align 8
  %6 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %7 = load i32, i32* @ALX_PHY_CTRL, align 4
  %8 = call i32 @alx_read_mem32(%struct.alx_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ALX_PHY_CTRL_DSPRST_OUT, align 4
  %10 = load i32, i32* @ALX_PHY_CTRL_IDDQ, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ALX_PHY_CTRL_GATE_25M, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ALX_PHY_CTRL_POWER_DOWN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ALX_PHY_CTRL_CLS, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @ALX_PHY_CTRL_RST_ANALOG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @ALX_PHY_CTRL_HIB_PULSE, align 4
  %25 = load i32, i32* @ALX_PHY_CTRL_HIB_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %30 = load i32, i32* @ALX_PHY_CTRL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @alx_write_mem32(%struct.alx_hw* %29, i32 %30, i32 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %35 = load i32, i32* @ALX_PHY_CTRL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ALX_PHY_CTRL_DSPRST_OUT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @alx_write_mem32(%struct.alx_hw* %34, i32 %35, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %46, %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ALX_PHY_CTRL_DSPRST_TO, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i32 @udelay(i32 10)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %40

49:                                               ; preds = %40
  %50 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %51 = load i32, i32* @ALX_MIIDBG_LEGCYPS, align 4
  %52 = load i32, i32* @ALX_LEGCYPS_DEF, align 4
  %53 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %55 = load i32, i32* @ALX_MIIDBG_SYSMODCTRL, align 4
  %56 = load i32, i32* @ALX_SYSMODCTRL_IECHOADJ_DEF, align 4
  %57 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %59 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %60 = load i32, i32* @ALX_MIIEXT_VDRVBIAS, align 4
  %61 = load i32, i32* @ALX_VDRVBIAS_DEF, align 4
  %62 = call i32 @alx_write_phy_ext(%struct.alx_hw* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %64 = load i32, i32* @ALX_LPI_CTRL, align 4
  %65 = call i32 @alx_read_mem32(%struct.alx_hw* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %67 = load i32, i32* @ALX_LPI_CTRL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ALX_LPI_CTRL_EN, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @alx_write_mem32(%struct.alx_hw* %66, i32 %67, i32 %71)
  %73 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %74 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %75 = load i32, i32* @ALX_MIIEXT_LOCAL_EEEADV, align 4
  %76 = call i32 @alx_write_phy_ext(%struct.alx_hw* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %78 = load i32, i32* @ALX_MIIDBG_TST10BTCFG, align 4
  %79 = load i32, i32* @ALX_TST10BTCFG_DEF, align 4
  %80 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %82 = load i32, i32* @ALX_MIIDBG_SRDSYSMOD, align 4
  %83 = load i32, i32* @ALX_SRDSYSMOD_DEF, align 4
  %84 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %81, i32 %82, i32 %83)
  %85 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %86 = load i32, i32* @ALX_MIIDBG_TST100BTCFG, align 4
  %87 = load i32, i32* @ALX_TST100BTCFG_DEF, align 4
  %88 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %85, i32 %86, i32 %87)
  %89 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %90 = load i32, i32* @ALX_MIIDBG_ANACTRL, align 4
  %91 = load i32, i32* @ALX_ANACTRL_DEF, align 4
  %92 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %89, i32 %90, i32 %91)
  %93 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %94 = load i32, i32* @ALX_MIIDBG_GREENCFG2, align 4
  %95 = call i32 @alx_read_phy_dbg(%struct.alx_hw* %93, i32 %94, i32* %5)
  %96 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %97 = load i32, i32* @ALX_MIIDBG_GREENCFG2, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @ALX_GREENCFG2_GATE_DFSE_EN, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %96, i32 %97, i32 %101)
  %103 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %104 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %105 = load i32, i32* @ALX_MIIEXT_NLP78, align 4
  %106 = load i32, i32* @ALX_MIIEXT_NLP78_120M_DEF, align 4
  %107 = call i32 @alx_write_phy_ext(%struct.alx_hw* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %109 = load i32, i32* @ALX_MIIEXT_ANEG, align 4
  %110 = load i32, i32* @ALX_MIIEXT_S3DIG10, align 4
  %111 = load i32, i32* @ALX_MIIEXT_S3DIG10_DEF, align 4
  %112 = call i32 @alx_write_phy_ext(%struct.alx_hw* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %114 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %149

117:                                              ; preds = %49
  %118 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %119 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %120 = load i32, i32* @ALX_MIIEXT_CLDCTRL3, align 4
  %121 = call i32 @alx_read_phy_ext(%struct.alx_hw* %118, i32 %119, i32 %120, i32* %5)
  %122 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %123 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %124 = load i32, i32* @ALX_MIIEXT_CLDCTRL3, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ALX_CLDCTRL3_BP_CABLE1TH_DET_GT, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @alx_write_phy_ext(%struct.alx_hw* %122, i32 %123, i32 %124, i32 %127)
  %129 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %130 = load i32, i32* @ALX_MIIDBG_GREENCFG2, align 4
  %131 = call i32 @alx_read_phy_dbg(%struct.alx_hw* %129, i32 %130, i32* %5)
  %132 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %133 = load i32, i32* @ALX_MIIDBG_GREENCFG2, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @ALX_GREENCFG2_BP_GREEN, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @alx_write_phy_dbg(%struct.alx_hw* %132, i32 %133, i32 %136)
  %138 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %139 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %140 = load i32, i32* @ALX_MIIEXT_CLDCTRL5, align 4
  %141 = call i32 @alx_read_phy_ext(%struct.alx_hw* %138, i32 %139, i32 %140, i32* %5)
  %142 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %143 = load i32, i32* @ALX_MIIEXT_PCS, align 4
  %144 = load i32, i32* @ALX_MIIEXT_CLDCTRL5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @ALX_CLDCTRL5_BP_VD_HLFBIAS, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @alx_write_phy_ext(%struct.alx_hw* %142, i32 %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %117, %49
  %150 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %151 = load i32, i32* @ALX_MII_IER, align 4
  %152 = load i32, i32* @ALX_IER_LINK_UP, align 4
  %153 = load i32, i32* @ALX_IER_LINK_DOWN, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @alx_write_phy_reg(%struct.alx_hw* %150, i32 %151, i32 %154)
  ret void
}

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @alx_write_phy_dbg(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_write_phy_ext(%struct.alx_hw*, i32, i32, i32) #1

declare dso_local i32 @alx_read_phy_dbg(%struct.alx_hw*, i32, i32*) #1

declare dso_local i32 @alx_read_phy_ext(%struct.alx_hw*, i32, i32, i32*) #1

declare dso_local i32 @alx_write_phy_reg(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
