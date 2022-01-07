; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_setup_port5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_setup_port5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, i32, i64, i32 }

@MT7530_MHWTRAP = common dso_local global i32 0, align 4
@MHWTRAP_MANUAL = common dso_local global i32 0, align 4
@MHWTRAP_P5_MAC_SEL = common dso_local global i32 0, align 4
@MHWTRAP_P5_DIS = common dso_local global i32 0, align 4
@MHWTRAP_P5_RGMII_MODE = common dso_local global i32 0, align 4
@MHWTRAP_PHY0_SEL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_NA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported p5_intf_sel %d\0A\00", align 1
@MT7530_P5RGMIIRXCR = common dso_local global i32 0, align 4
@CSR_RGMII_EDGE_ALIGN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@MT7530_P5RGMIITXCR = common dso_local global i32 0, align 4
@MT7530_IO_DRV_CR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Setup P5, HWTRAP=0x%x, intf_sel=%s, phy-mode=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i64)* @mt7530_setup_port5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_setup_port5(%struct.dsa_switch* %0, i64 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mt7530_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  store %struct.mt7530_priv* %10, %struct.mt7530_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %15 = load i32, i32* @MT7530_MHWTRAP, align 4
  %16 = call i32 @mt7530_read(%struct.mt7530_priv* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @MHWTRAP_MANUAL, align 4
  %18 = load i32, i32* @MHWTRAP_P5_MAC_SEL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MHWTRAP_P5_DIS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @MHWTRAP_P5_RGMII_MODE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @MHWTRAP_PHY0_SEL, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %56 [
    i32 129, label %34
    i32 128, label %38
    i32 130, label %49
    i32 131, label %54
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @MHWTRAP_PHY0_SEL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %2, %34
  %39 = load i32, i32* @MHWTRAP_P5_MAC_SEL, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* @MHWTRAP_P5_DIS, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %47 = call i32 @MT7530_PMCR_P(i32 5)
  %48 = call i32 @mt7530_write(%struct.mt7530_priv* %46, i32 %47, i32 353024)
  br label %64

49:                                               ; preds = %2
  %50 = load i32, i32* @MHWTRAP_P5_DIS, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %64

54:                                               ; preds = %2
  %55 = load i64, i64* @PHY_INTERFACE_MODE_NA, align 8
  store i64 %55, i64* %4, align 8
  br label %64

56:                                               ; preds = %2
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %58 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %122

64:                                               ; preds = %54, %49, %38
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @phy_interface_mode_is_rgmii(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %64
  %69 = load i32, i32* @MHWTRAP_P5_RGMII_MODE, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %73 = load i32, i32* @MT7530_P5RGMIIRXCR, align 4
  %74 = load i32, i32* @CSR_RGMII_EDGE_ALIGN, align 4
  %75 = call i32 @mt7530_write(%struct.mt7530_priv* %72, i32 %73, i32 %74)
  %76 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %77 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dsa_is_dsa_port(i32 %78, i32 5)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %68
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  store i32 4, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %85, %68
  %91 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %92 = load i32, i32* @MT7530_P5RGMIITXCR, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 16, %93
  %95 = call i32 @CSR_RGMII_TXC_CFG(i32 %94)
  %96 = call i32 @mt7530_write(%struct.mt7530_priv* %91, i32 %92, i32 %95)
  %97 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %98 = load i32, i32* @MT7530_IO_DRV_CR, align 4
  %99 = call i32 @P5_IO_CLK_DRV(i32 1)
  %100 = call i32 @P5_IO_DATA_DRV(i32 1)
  %101 = or i32 %99, %100
  %102 = call i32 @mt7530_write(%struct.mt7530_priv* %97, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %90, %64
  %104 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %105 = load i32, i32* @MT7530_MHWTRAP, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @mt7530_write(%struct.mt7530_priv* %104, i32 %105, i32 %106)
  %108 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %109 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %113 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @p5_intf_modes(i32 %114)
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @phy_modes(i64 %116)
  %118 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %115, i32 %117)
  %119 = load i64, i64* %4, align 8
  %120 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %121 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %103, %56
  %123 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %124 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %123, i32 0, i32 1
  %125 = call i32 @mutex_unlock(i32* %124)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7530_read(%struct.mt7530_priv*, i32) #1

declare dso_local i32 @mt7530_write(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @MT7530_PMCR_P(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @dsa_is_dsa_port(i32, i32) #1

declare dso_local i32 @CSR_RGMII_TXC_CFG(i32) #1

declare dso_local i32 @P5_IO_CLK_DRV(i32) #1

declare dso_local i32 @P5_IO_DATA_DRV(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @p5_intf_modes(i32) #1

declare dso_local i32 @phy_modes(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
