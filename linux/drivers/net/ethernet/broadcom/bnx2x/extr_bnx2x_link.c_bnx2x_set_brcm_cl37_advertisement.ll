; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_brcm_cl37_advertisement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_brcm_cl37_advertisement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_2_5G = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10G = common dso_local global i32 0, align 4
@MDIO_REG_BANK_OVER_1G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1 = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_set_brcm_cl37_advertisement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_brcm_cl37_advertisement(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
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
  store i32 0, i32* %6, align 4
  %10 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MDIO_OVER_1G_UP1_2_5G, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @MDIO_OVER_1G_UP1_10G, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %34 = load i32, i32* @MDIO_REG_BANK_OVER_1G, align 4
  %35 = load i32, i32* @MDIO_OVER_1G_UP1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %32, %struct.bnx2x_phy* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %39 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %40 = load i32, i32* @MDIO_REG_BANK_OVER_1G, align 4
  %41 = load i32, i32* @MDIO_OVER_1G_UP3, align 4
  %42 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %38, %struct.bnx2x_phy* %39, i32 %40, i32 %41, i32 1024)
  ret void
}

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
