; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_phylink_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_phylink_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.phylink_link_state = type { i32 }

@GSWIP_MII_CFG_LDCLKDIS = common dso_local global i32 0, align 4
@GSWIP_MII_CFG_MODE_MIIM = common dso_local global i32 0, align 4
@GSWIP_MII_CFG_MODE_MIIP = common dso_local global i32 0, align 4
@GSWIP_MII_CFG_MODE_RMIIM = common dso_local global i32 0, align 4
@GSWIP_MII_CFG_MODE_RGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported interface: %d\0A\00", align 1
@GSWIP_MII_CFG_MODE_MASK = common dso_local global i32 0, align 4
@GSWIP_MII_PCDU_TXDLY_MASK = common dso_local global i32 0, align 4
@GSWIP_MII_PCDU_RXDLY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, %struct.phylink_link_state*)* @gswip_phylink_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_phylink_mac_config(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.phylink_link_state* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylink_link_state*, align 8
  %9 = alloca %struct.gswip_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylink_link_state* %3, %struct.phylink_link_state** %8, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 1
  %13 = load %struct.gswip_priv*, %struct.gswip_priv** %12, align 8
  store %struct.gswip_priv* %13, %struct.gswip_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @GSWIP_MII_CFG_LDCLKDIS, align 4
  %15 = load i32, i32* %10, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %10, align 4
  %17 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %18 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %36 [
    i32 134, label %20
    i32 135, label %20
    i32 133, label %24
    i32 128, label %28
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
    i32 129, label %32
  ]

20:                                               ; preds = %4, %4
  %21 = load i32, i32* @GSWIP_MII_CFG_MODE_MIIM, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  br label %44

24:                                               ; preds = %4
  %25 = load i32, i32* @GSWIP_MII_CFG_MODE_MIIP, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %44

28:                                               ; preds = %4
  %29 = load i32, i32* @GSWIP_MII_CFG_MODE_RMIIM, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %44

32:                                               ; preds = %4, %4, %4, %4
  %33 = load i32, i32* @GSWIP_MII_CFG_MODE_RGMII, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %44

36:                                               ; preds = %4
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %38 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %41 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %71

44:                                               ; preds = %32, %28, %24, %20
  %45 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  %46 = load i32, i32* @GSWIP_MII_CFG_MODE_MASK, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gswip_mii_mask_cfg(%struct.gswip_priv* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %51 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %70 [
    i32 131, label %53
    i32 130, label %60
    i32 129, label %65
  ]

53:                                               ; preds = %44
  %54 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  %55 = load i32, i32* @GSWIP_MII_PCDU_TXDLY_MASK, align 4
  %56 = load i32, i32* @GSWIP_MII_PCDU_RXDLY_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @gswip_mii_mask_pcdu(%struct.gswip_priv* %54, i32 %57, i32 0, i32 %58)
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  %62 = load i32, i32* @GSWIP_MII_PCDU_RXDLY_MASK, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @gswip_mii_mask_pcdu(%struct.gswip_priv* %61, i32 %62, i32 0, i32 %63)
  br label %71

65:                                               ; preds = %44
  %66 = load %struct.gswip_priv*, %struct.gswip_priv** %9, align 8
  %67 = load i32, i32* @GSWIP_MII_PCDU_TXDLY_MASK, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @gswip_mii_mask_pcdu(%struct.gswip_priv* %66, i32 %67, i32 0, i32 %68)
  br label %71

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %36, %70, %65, %60, %53
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gswip_mii_mask_cfg(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @gswip_mii_mask_pcdu(%struct.gswip_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
