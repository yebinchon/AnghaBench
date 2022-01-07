; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_7101_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_7101_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting the SFX7101 LASI indication\0A\00", align 1
@MISC_REGISTERS_GPIO_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_OUTPUT_HIGH = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Setting the SFX7101 LED to blink on traffic\0A\00", align 1
@MDIO_PMA_REG_7107_LED_CNTL = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_7101_VER1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_7101_VER2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_7101_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_7101_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %10, align 8
  %14 = load i32, i32* @NETIF_MSG_LINK, align 4
  %15 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %17 = load i32, i32* @MISC_REGISTERS_GPIO_2, align 4
  %18 = load i32, i32* @MISC_REGISTERS_GPIO_OUTPUT_HIGH, align 4
  %19 = load %struct.link_params*, %struct.link_params** %5, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %24 = load %struct.link_params*, %struct.link_params** %5, align 8
  %25 = getelementptr inbounds %struct.link_params, %struct.link_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x* %23, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load %struct.link_params*, %struct.link_params** %5, align 8
  %31 = call i32 @bnx2x_wait_reset_complete(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, %struct.link_params* %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %34 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %35 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %36 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32 1)
  %37 = load i32, i32* @NETIF_MSG_LINK, align 4
  %38 = call i32 @DP(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i32, i32* @MDIO_PMA_REG_7107_LED_CNTL, align 4
  %43 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, i32 %41, i32 %42, i32 8)
  %44 = load %struct.link_params*, %struct.link_params** %5, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %46 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %47 = call i32 @bnx2x_ext_phy_set_pause(%struct.link_params* %44, %struct.bnx2x_phy* %45, %struct.link_vars* %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %50 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %51 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %52 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %48, %struct.bnx2x_phy* %49, i32 %50, i32 %51, i32* %9)
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, 512
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %56 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %57 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %58 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %55, %struct.bnx2x_phy* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %62 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %63 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %64 = load i32, i32* @MDIO_PMA_REG_7101_VER1, align 4
  %65 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %61, %struct.bnx2x_phy* %62, i32 %63, i32 %64, i32* %7)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %67 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %68 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %69 = load i32, i32* @MDIO_PMA_REG_7101_VER2, align 4
  %70 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %66, %struct.bnx2x_phy* %67, i32 %68, i32 %69, i32* %8)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %72 = load %struct.link_params*, %struct.link_params** %5, align 8
  %73 = getelementptr inbounds %struct.link_params, %struct.link_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %80 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bnx2x_save_spirom_version(%struct.bnx2x* %71, i32 %74, i32 %78, i32 %81)
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_wait_reset_complete(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_set_pause(%struct.link_params*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_save_spirom_version(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
