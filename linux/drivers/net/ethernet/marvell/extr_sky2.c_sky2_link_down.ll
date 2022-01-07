; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@LNK_LED_REG = common dso_local global i32 0, align 4
@LINKLED_OFF = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_link_down(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %6 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %7 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %6, i32 0, i32 2
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  store %struct.sky2_hw* %8, %struct.sky2_hw** %3, align 8
  %9 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %15 = call i32 @gm_phy_write(%struct.sky2_hw* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GM_GP_CTRL, align 4
  %19 = call i32 @gma_read16(%struct.sky2_hw* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %21 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GM_GP_CTRL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @gma_write16(%struct.sky2_hw* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %32 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_carrier_off(i32 %33)
  %35 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @LNK_LED_REG, align 4
  %38 = call i32 @SK_REG(i32 %36, i32 %37)
  %39 = load i32, i32* @LINKLED_OFF, align 4
  %40 = call i32 @sky2_write8(%struct.sky2_hw* %35, i32 %38, i32 %39)
  %41 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %42 = load i32, i32* @link, align 4
  %43 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %44 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_info(%struct.sky2_port* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @sky2_phy_init(%struct.sky2_hw* %47, i32 %48)
  ret void
}

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, i32, i8*) #1

declare dso_local i32 @sky2_phy_init(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
