; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i64, i64 }
%struct.bcm_sf2_priv = type { i64 }

@CORE_IMP0_PRT_ID = common dso_local global i32 0, align 4
@BCM7445_DEVICE_ID = common dso_local global i64 0, align 8
@EXT_GPHY = common dso_local global i32 0, align 4
@EXT_EPHY = common dso_local global i32 0, align 4
@EXT_REVMII = common dso_local global i32 0, align 4
@ID_MODE_DIS = common dso_local global i32 0, align 4
@PORT_MODE_MASK = common dso_local global i32 0, align 4
@PORT_MODE_SHIFT = common dso_local global i32 0, align 4
@RX_PAUSE_EN = common dso_local global i32 0, align 4
@TX_PAUSE_EN = common dso_local global i32 0, align 4
@MLO_PAUSE_TXRX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@SW_OVERRIDE = common dso_local global i32 0, align 4
@SPDSTS_1000 = common dso_local global i32 0, align 4
@SPEED_SHIFT = common dso_local global i32 0, align 4
@SPDSTS_100 = common dso_local global i32 0, align 4
@LINK_STS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32, %struct.phylink_link_state*)* @bcm_sf2_sw_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_sw_mac_config(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.phylink_link_state* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phylink_link_state*, align 8
  %9 = alloca %struct.bcm_sf2_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.phylink_link_state* %3, %struct.phylink_link_state** %8, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %15 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %14)
  store %struct.bcm_sf2_priv* %15, %struct.bcm_sf2_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %18 = load i32, i32* @CORE_IMP0_PRT_ID, align 4
  %19 = call i32 @core_readl(%struct.bcm_sf2_priv* %17, i32 %18)
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %145

22:                                               ; preds = %4
  %23 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %24 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BCM7445_DEVICE_ID, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @CORE_STS_OVERRIDE_GMIIP_PORT(i32 %29)
  store i32 %30, i32* %13, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @CORE_STS_OVERRIDE_GMIIP2_PORT(i32 %32)
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %36 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %45 [
    i32 131, label %38
    i32 130, label %39
    i32 133, label %41
    i32 132, label %43
  ]

38:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %34, %38
  %40 = load i32, i32* @EXT_GPHY, align 4
  store i32 %40, i32* %11, align 4
  br label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @EXT_EPHY, align 4
  store i32 %42, i32* %11, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EXT_REVMII, align 4
  store i32 %44, i32* %11, align 4
  br label %46

45:                                               ; preds = %34
  br label %104

46:                                               ; preds = %43, %41, %39
  %47 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @REG_RGMII_CNTRL_P(i32 %48)
  %50 = call i32 @reg_readl(%struct.bcm_sf2_priv* %47, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @ID_MODE_DIS, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @PORT_MODE_MASK, align 4
  %56 = load i32, i32* @PORT_MODE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @RX_PAUSE_EN, align 4
  %62 = load i32, i32* @TX_PAUSE_EN, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %46
  %73 = load i32, i32* @ID_MODE_DIS, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %72, %46
  %77 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %78 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %85 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MLO_PAUSE_TX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @TX_PAUSE_EN, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* @RX_PAUSE_EN, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %94, %76
  %99 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @REG_RGMII_CNTRL_P(i32 %101)
  %103 = call i32 @reg_writel(%struct.bcm_sf2_priv* %99, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %45
  %105 = load i32, i32* @SW_OVERRIDE, align 4
  store i32 %105, i32* %12, align 4
  %106 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %107 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %121 [
    i32 128, label %109
    i32 129, label %115
  ]

109:                                              ; preds = %104
  %110 = load i32, i32* @SPDSTS_1000, align 4
  %111 = load i32, i32* @SPEED_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %121

115:                                              ; preds = %104
  %116 = load i32, i32* @SPDSTS_100, align 4
  %117 = load i32, i32* @SPEED_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %104, %115, %109
  %122 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %123 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @LINK_STS, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load %struct.phylink_link_state*, %struct.phylink_link_state** %8, align 8
  %132 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DUPLEX_FULL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load i32, i32* @DUPLX_MODE, align 4
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %136, %130
  %141 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @core_writel(%struct.bcm_sf2_priv* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %21
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @CORE_STS_OVERRIDE_GMIIP_PORT(i32) #1

declare dso_local i32 @CORE_STS_OVERRIDE_GMIIP2_PORT(i32) #1

declare dso_local i32 @reg_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @REG_RGMII_CNTRL_P(i32) #1

declare dso_local i32 @reg_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
