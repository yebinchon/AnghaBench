; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GSWIP_BM_PCFG_CNTEN = common dso_local global i32 0, align 4
@GSWIP_FDMA_PCTRL_EN = common dso_local global i32 0, align 4
@GSWIP_FDMA_PCTRL_VLANMOD_BOTH = common dso_local global i32 0, align 4
@GSWIP_SDMA_PCTRL_EN = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_LINK_AUTO = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_SPEED_AUTO = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_FDUP_AUTO = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_FCONTX_AUTO = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_FCONRX_AUTO = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_MDC_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* @gswip_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_port_enable(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.gswip_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phy_device* %2, %struct.phy_device** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  store %struct.gswip_priv* %13, %struct.gswip_priv** %8, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dsa_is_user_port(%struct.dsa_switch* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dsa_is_cpu_port(%struct.dsa_switch* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @gswip_add_single_port_br(%struct.gswip_priv* %25, i32 %26, i32 1)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %35 = load i32, i32* @GSWIP_BM_PCFG_CNTEN, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GSWIP_BM_PCFGp(i32 %36)
  %38 = call i32 @gswip_switch_w(%struct.gswip_priv* %34, i32 %35, i32 %37)
  %39 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %40 = load i32, i32* @GSWIP_FDMA_PCTRL_EN, align 4
  %41 = load i32, i32* @GSWIP_FDMA_PCTRL_VLANMOD_BOTH, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @GSWIP_FDMA_PCTRLp(i32 %43)
  %45 = call i32 @gswip_switch_mask(%struct.gswip_priv* %39, i32 0, i32 %42, i32 %44)
  %46 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %47 = load i32, i32* @GSWIP_SDMA_PCTRL_EN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GSWIP_SDMA_PCTRLp(i32 %48)
  %50 = call i32 @gswip_switch_mask(%struct.gswip_priv* %46, i32 0, i32 %47, i32 %49)
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dsa_is_cpu_port(%struct.dsa_switch* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %33
  %56 = load i32, i32* @GSWIP_MDIO_PHY_LINK_AUTO, align 4
  %57 = load i32, i32* @GSWIP_MDIO_PHY_SPEED_AUTO, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GSWIP_MDIO_PHY_FDUP_AUTO, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @GSWIP_MDIO_PHY_FCONTX_AUTO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @GSWIP_MDIO_PHY_FCONRX_AUTO, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GSWIP_MDIO_PHY_ADDR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = or i32 %64, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @GSWIP_MDIO_PHYp(i32 %74)
  %76 = call i32 @gswip_mdio_w(%struct.gswip_priv* %72, i32 %73, i32 %75)
  %77 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* @GSWIP_MDIO_MDC_CFG0, align 4
  %81 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %77, i32 0, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %55, %33
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %30, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @gswip_add_single_port_br(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @GSWIP_BM_PCFGp(i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_FDMA_PCTRLp(i32) #1

declare dso_local i32 @GSWIP_SDMA_PCTRLp(i32) #1

declare dso_local i32 @gswip_mdio_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @GSWIP_MDIO_PHYp(i32) #1

declare dso_local i32 @gswip_mdio_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
