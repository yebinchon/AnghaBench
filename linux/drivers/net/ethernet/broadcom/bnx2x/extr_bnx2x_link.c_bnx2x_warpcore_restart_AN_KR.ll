; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_restart_AN_KR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_restart_AN_KR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_IEEE0BLK_MIICNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_restart_AN_KR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_restart_AN_KR(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %7 = load %struct.link_params*, %struct.link_params** %4, align 8
  %8 = getelementptr inbounds %struct.link_params, %struct.link_params* %7, i32 0, i32 0
  %9 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %10, %struct.link_params* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %15 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %16 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %13, %struct.bnx2x_phy* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %21 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %22 = load i32, i32* @MDIO_WC_REG_IEEE0BLK_MIICNTL, align 4
  %23 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %21, i32 %22, i32 4608)
  %24 = load %struct.link_params*, %struct.link_params** %4, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %26 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %24, %struct.bnx2x_phy* %25)
  ret void
}

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
