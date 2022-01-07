; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_lpi_passthrough.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_set_lpi_passthrough.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Configure WC for LPI pass through\0A\00", align 1
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_EEE_COMBO_CONTROL0 = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL4_MISC5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_set_lpi_passthrough to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_set_lpi_passthrough(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %6 = load %struct.link_params*, %struct.link_params** %4, align 8
  %7 = getelementptr inbounds %struct.link_params, %struct.link_params* %6, i32 0, i32 0
  %8 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  store %struct.bnx2x* %8, %struct.bnx2x** %5, align 8
  %9 = load i32, i32* @NETIF_MSG_LINK, align 4
  %10 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %12 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %13 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %14 = load i32, i32* @MDIO_WC_REG_EEE_COMBO_CONTROL0, align 4
  %15 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %11, %struct.bnx2x_phy* %12, i32 %13, i32 %14, i32 124)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %18 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %19 = load i32, i32* @MDIO_WC_REG_DIGITAL4_MISC5, align 4
  %20 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 %18, i32 %19, i32 49152)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
