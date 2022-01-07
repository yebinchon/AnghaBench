; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GSWIP_SWRES_R0 = common dso_local global i64 0, align 8
@GSWIP_SWRES = common dso_local global i32 0, align 4
@GSWIP_MDIO_GLOB_ENABLE = common dso_local global i32 0, align 4
@GSWIP_MDIO_GLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"writing PCE microcode failed, %i\00", align 1
@GSWIP_PCE_PMAP1 = common dso_local global i32 0, align 4
@GSWIP_PCE_PMAP2 = common dso_local global i32 0, align 4
@GSWIP_PCE_PMAP3 = common dso_local global i32 0, align 4
@GSWIP_MDIO_MDC_CFG0 = common dso_local global i32 0, align 4
@GSWIP_MDIO_MDC_CFG1 = common dso_local global i32 0, align 4
@GSWIP_MII_CFG_EN = common dso_local global i32 0, align 4
@GSWIP_FDMA_PCTRL_STEN = common dso_local global i32 0, align 4
@GSWIP_PCE_PCTRL_0_INGRESS = common dso_local global i32 0, align 4
@GSWIP_MAC_CTRL_2_MLEN = common dso_local global i32 0, align 4
@VLAN_ETH_FRAME_LEN = common dso_local global i64 0, align 8
@GSWIP_MAC_FLEN = common dso_local global i32 0, align 4
@GSWIP_BM_QUEUE_GCTRL_GL_MOD = common dso_local global i32 0, align 4
@GSWIP_BM_QUEUE_GCTRL = common dso_local global i32 0, align 4
@GSWIP_PCE_GCTRL_0_VLAN = common dso_local global i32 0, align 4
@GSWIP_PCE_GCTRL_0 = common dso_local global i32 0, align 4
@GSWIP_PCE_GCTRL_0_MTFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MAC flushing didn't finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @gswip_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.gswip_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  store %struct.gswip_priv* %10, %struct.gswip_priv** %4, align 8
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %12 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %17 = load i64, i64* @GSWIP_SWRES_R0, align 8
  %18 = load i32, i32* @GSWIP_SWRES, align 4
  %19 = call i32 @gswip_switch_w(%struct.gswip_priv* %16, i64 %17, i32 %18)
  %20 = call i32 @usleep_range(i32 5000, i32 10000)
  %21 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %22 = load i32, i32* @GSWIP_SWRES, align 4
  %23 = call i32 @gswip_switch_w(%struct.gswip_priv* %21, i64 0, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %27 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gswip_port_disable(%struct.dsa_switch* %33, i32 %34)
  %36 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @gswip_port_vlan_filtering(%struct.dsa_switch* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %44 = load i32, i32* @GSWIP_MDIO_GLOB_ENABLE, align 4
  %45 = load i32, i32* @GSWIP_MDIO_GLOB, align 4
  %46 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %43, i32 0, i32 %44, i32 %45)
  %47 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %48 = call i32 @gswip_pce_load_microcode(%struct.gswip_priv* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %53 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %137

58:                                               ; preds = %42
  %59 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @BIT(i32 %60)
  %62 = load i32, i32* @GSWIP_PCE_PMAP1, align 4
  %63 = call i32 @gswip_switch_w(%struct.gswip_priv* %59, i64 %61, i32 %62)
  %64 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @BIT(i32 %65)
  %67 = load i32, i32* @GSWIP_PCE_PMAP2, align 4
  %68 = call i32 @gswip_switch_w(%struct.gswip_priv* %64, i64 %66, i32 %67)
  %69 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @BIT(i32 %70)
  %72 = load i32, i32* @GSWIP_PCE_PMAP3, align 4
  %73 = call i32 @gswip_switch_w(%struct.gswip_priv* %69, i64 %71, i32 %72)
  %74 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %75 = load i32, i32* @GSWIP_MDIO_MDC_CFG0, align 4
  %76 = call i32 @gswip_mdio_w(%struct.gswip_priv* %74, i32 0, i32 %75)
  %77 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %78 = load i32, i32* @GSWIP_MDIO_MDC_CFG1, align 4
  %79 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %77, i32 255, i32 9, i32 %78)
  %80 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %81 = load i32, i32* @GSWIP_MII_CFG_EN, align 4
  %82 = call i32 @gswip_mii_mask_cfg(%struct.gswip_priv* %80, i32 %81, i32 0, i32 0)
  %83 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %84 = load i32, i32* @GSWIP_MII_CFG_EN, align 4
  %85 = call i32 @gswip_mii_mask_cfg(%struct.gswip_priv* %83, i32 %84, i32 0, i32 1)
  %86 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %87 = load i32, i32* @GSWIP_MII_CFG_EN, align 4
  %88 = call i32 @gswip_mii_mask_cfg(%struct.gswip_priv* %86, i32 %87, i32 0, i32 5)
  %89 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %90 = load i32, i32* @GSWIP_FDMA_PCTRL_STEN, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @GSWIP_FDMA_PCTRLp(i32 %91)
  %93 = call i32 @gswip_switch_mask(%struct.gswip_priv* %89, i32 0, i32 %90, i32 %92)
  %94 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %95 = load i32, i32* @GSWIP_PCE_PCTRL_0_INGRESS, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @GSWIP_PCE_PCTRL_0p(i32 %96)
  %98 = call i32 @gswip_switch_mask(%struct.gswip_priv* %94, i32 0, i32 %95, i32 %97)
  %99 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %100 = load i32, i32* @GSWIP_MAC_CTRL_2_MLEN, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @GSWIP_MAC_CTRL_2p(i32 %101)
  %103 = call i32 @gswip_switch_mask(%struct.gswip_priv* %99, i32 0, i32 %100, i32 %102)
  %104 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %105 = load i64, i64* @VLAN_ETH_FRAME_LEN, align 8
  %106 = add nsw i64 %105, 8
  %107 = load i32, i32* @GSWIP_MAC_FLEN, align 4
  %108 = call i32 @gswip_switch_w(%struct.gswip_priv* %104, i64 %106, i32 %107)
  %109 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %110 = load i32, i32* @GSWIP_BM_QUEUE_GCTRL_GL_MOD, align 4
  %111 = load i32, i32* @GSWIP_BM_QUEUE_GCTRL, align 4
  %112 = call i32 @gswip_switch_mask(%struct.gswip_priv* %109, i32 0, i32 %110, i32 %111)
  %113 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %114 = load i32, i32* @GSWIP_PCE_GCTRL_0_VLAN, align 4
  %115 = load i32, i32* @GSWIP_PCE_GCTRL_0, align 4
  %116 = call i32 @gswip_switch_mask(%struct.gswip_priv* %113, i32 0, i32 %114, i32 %115)
  %117 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %118 = load i32, i32* @GSWIP_PCE_GCTRL_0_MTFL, align 4
  %119 = load i32, i32* @GSWIP_PCE_GCTRL_0, align 4
  %120 = call i32 @gswip_switch_mask(%struct.gswip_priv* %117, i32 0, i32 %118, i32 %119)
  %121 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %122 = load i32, i32* @GSWIP_PCE_GCTRL_0, align 4
  %123 = load i32, i32* @GSWIP_PCE_GCTRL_0_MTFL, align 4
  %124 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %121, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %58
  %128 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %129 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %137

133:                                              ; preds = %58
  %134 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @gswip_port_enable(%struct.dsa_switch* %134, i32 %135, i32* null)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %133, %127, %51
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gswip_port_disable(%struct.dsa_switch*, i32) #1

declare dso_local i32 @gswip_port_vlan_filtering(%struct.dsa_switch*, i32, i32) #1

declare dso_local i32 @gswip_mdio_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @gswip_pce_load_microcode(%struct.gswip_priv*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @gswip_mdio_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_mii_mask_cfg(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_FDMA_PCTRLp(i32) #1

declare dso_local i32 @GSWIP_PCE_PCTRL_0p(i32) #1

declare dso_local i32 @GSWIP_MAC_CTRL_2p(i32) #1

declare dso_local i32 @gswip_switch_r_timeout(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_port_enable(%struct.dsa_switch*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
