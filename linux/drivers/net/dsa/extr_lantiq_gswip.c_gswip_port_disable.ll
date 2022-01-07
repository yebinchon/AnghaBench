; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }

@GSWIP_MDIO_PHY_LINK_DOWN = common dso_local global i32 0, align 4
@GSWIP_MDIO_PHY_LINK_MASK = common dso_local global i32 0, align 4
@GSWIP_MDIO_MDC_CFG0 = common dso_local global i32 0, align 4
@GSWIP_FDMA_PCTRL_EN = common dso_local global i32 0, align 4
@GSWIP_SDMA_PCTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @gswip_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_port_disable(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  store %struct.gswip_priv* %8, %struct.gswip_priv** %5, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dsa_is_user_port(%struct.dsa_switch* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dsa_is_cpu_port(%struct.dsa_switch* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %21 = load i32, i32* @GSWIP_MDIO_PHY_LINK_DOWN, align 4
  %22 = load i32, i32* @GSWIP_MDIO_PHY_LINK_MASK, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GSWIP_MDIO_PHYp(i32 %23)
  %25 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* @GSWIP_MDIO_MDC_CFG0, align 4
  %30 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %26, i32 %28, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %19, %14
  %32 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %33 = load i32, i32* @GSWIP_FDMA_PCTRL_EN, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @GSWIP_FDMA_PCTRLp(i32 %34)
  %36 = call i32 @gswip_switch_mask(%struct.gswip_priv* %32, i32 %33, i32 0, i32 %35)
  %37 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %38 = load i32, i32* @GSWIP_SDMA_PCTRL_EN, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @GSWIP_SDMA_PCTRLp(i32 %39)
  %41 = call i32 @gswip_switch_mask(%struct.gswip_priv* %37, i32 %38, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %31, %13
  ret void
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @gswip_mdio_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_MDIO_PHYp(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_FDMA_PCTRLp(i32) #1

declare dso_local i32 @GSWIP_SDMA_PCTRLp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
