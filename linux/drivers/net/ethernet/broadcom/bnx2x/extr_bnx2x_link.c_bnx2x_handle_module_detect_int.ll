; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_handle_module_detect_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_handle_module_detect_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, i32, i32, %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i32 }
%struct.bnx2x = type { i32 }

@INT_PHY = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to get MOD_ABS interrupt config\0A\00", align 1
@MISC_REGISTERS_GPIO_HIGH = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_INT_OUTPUT_CLR = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL5_MISC6 = common dso_local global i32 0, align 4
@PHY_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"SFP+ module is not initialized\0A\00", align 1
@MISC_REGISTERS_GPIO_INT_OUTPUT_SET = common dso_local global i32 0, align 4
@ETH_PHY_NOT_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_handle_module_detect_int(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %9 = load %struct.link_params*, %struct.link_params** %2, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 5
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %3, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i64 @CHIP_IS_E3(%struct.bnx2x* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.link_params*, %struct.link_params** %2, align 8
  %17 = getelementptr inbounds %struct.link_params, %struct.link_params* %16, i32 0, i32 4
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %17, align 8
  %19 = load i64, i64* @INT_PHY, align 8
  %20 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %18, i64 %19
  store %struct.bnx2x_phy* %20, %struct.bnx2x_phy** %4, align 8
  %21 = load %struct.link_params*, %struct.link_params** %2, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %23 = call i32 @bnx2x_sfp_set_transmitter(%struct.link_params* %21, %struct.bnx2x_phy* %22, i32 1)
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.link_params*, %struct.link_params** %2, align 8
  %26 = getelementptr inbounds %struct.link_params, %struct.link_params* %25, i32 0, i32 4
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %26, align 8
  %28 = load i64, i64* @EXT_PHY1, align 8
  %29 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %27, i64 %28
  store %struct.bnx2x_phy* %29, %struct.bnx2x_phy** %4, align 8
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load %struct.link_params*, %struct.link_params** %2, align 8
  %33 = getelementptr inbounds %struct.link_params, %struct.link_params* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.link_params*, %struct.link_params** %2, align 8
  %36 = getelementptr inbounds %struct.link_params, %struct.link_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.link_params*, %struct.link_params** %2, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bnx2x_get_mod_abs_int_cfg(%struct.bnx2x* %31, i32 %34, i32 %37, i32 %40, i32* %6, i32* %7)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* @NETIF_MSG_LINK, align 4
  %47 = call i32 @DP(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %124

48:                                               ; preds = %30
  %49 = load %struct.link_params*, %struct.link_params** %2, align 8
  %50 = load i32, i32* @MISC_REGISTERS_GPIO_HIGH, align 4
  %51 = call i32 @bnx2x_set_sfp_module_fault_led(%struct.link_params* %49, i32 %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @bnx2x_get_gpio(%struct.bnx2x* %52, i32 %53, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %115

58:                                               ; preds = %48
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = load %struct.link_params*, %struct.link_params** %2, align 8
  %61 = call i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x* %59, %struct.link_params* %60)
  %62 = load %struct.link_params*, %struct.link_params** %2, align 8
  %63 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %64 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %62, %struct.bnx2x_phy* %63)
  %65 = load %struct.link_params*, %struct.link_params** %2, align 8
  %66 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %67 = call i32 @bnx2x_power_sfp_module(%struct.link_params* %65, %struct.bnx2x_phy* %66, i32 1)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MISC_REGISTERS_GPIO_INT_OUTPUT_CLR, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @bnx2x_set_gpio_int(%struct.bnx2x* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %74 = load %struct.link_params*, %struct.link_params** %2, align 8
  %75 = call i64 @bnx2x_wait_for_sfp_module_initialized(%struct.bnx2x_phy* %73, %struct.link_params* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %58
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %79 = load %struct.link_params*, %struct.link_params** %2, align 8
  %80 = call i32 @bnx2x_sfp_module_detection(%struct.bnx2x_phy* %78, %struct.link_params* %79)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %82 = call i64 @CHIP_IS_E3(%struct.bnx2x* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %87 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %88 = load i32, i32* @MDIO_WC_REG_DIGITAL5_MISC6, align 4
  %89 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %85, %struct.bnx2x_phy* %86, i32 %87, i32 %88, i32* %8)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %84
  %93 = load %struct.link_params*, %struct.link_params** %2, align 8
  %94 = getelementptr inbounds %struct.link_params, %struct.link_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PHY_INITIALIZED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %101 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %102 = call i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x* %100, %struct.bnx2x_phy* %101, i32 1)
  %103 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %104 = load %struct.link_params*, %struct.link_params** %2, align 8
  %105 = call i32 @bnx2x_warpcore_config_sfi(%struct.bnx2x_phy* %103, %struct.link_params* %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %108 = call i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x* %106, %struct.bnx2x_phy* %107, i32 0)
  br label %109

109:                                              ; preds = %99, %92, %84
  br label %110

110:                                              ; preds = %109, %77
  br label %114

111:                                              ; preds = %58
  %112 = load i32, i32* @NETIF_MSG_LINK, align 4
  %113 = call i32 @DP(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %110
  br label %124

115:                                              ; preds = %48
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @MISC_REGISTERS_GPIO_INT_OUTPUT_SET, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @bnx2x_set_gpio_int(%struct.bnx2x* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* @ETH_PHY_NOT_PRESENT, align 4
  %122 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %123 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %45, %115, %114
  ret void
}

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sfp_set_transmitter(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_get_mod_abs_int_cfg(%struct.bnx2x*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_set_sfp_module_fault_led(%struct.link_params*, i32) #1

declare dso_local i64 @bnx2x_get_gpio(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_power_sfp_module(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_set_gpio_int(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i64 @bnx2x_wait_for_sfp_module_initialized(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_sfp_module_detection(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_warpcore_config_sfi(%struct.bnx2x_phy*, %struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
