; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_5461x_set_link_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_5461x_set_link_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_GPHY_SHADOW = common dso_local global i32 0, align 4
@MDIO_REG_GPHY_SHADOW_LED_SEL1 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"54618x set link led (mode=%x)\0A\00", align 1
@MDIO_REG_GPHY_SHADOW_WR_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_5461x_set_link_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_5461x_set_link_led(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %14 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %15 = load i32, i32* @MDIO_REG_GPHY_SHADOW_LED_SEL1, align 4
  %16 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %12, %struct.bnx2x_phy* %13, i32 %14, i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %19 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %20 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i32* %8)
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 65280
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @NETIF_MSG_LINK, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DP(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %36 [
    i32 131, label %27
    i32 130, label %27
    i32 128, label %30
    i32 129, label %33
  ]

27:                                               ; preds = %3, %3
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, 238
  store i32 %29, i32* %8, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 255
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %33, %30, %27
  %38 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %39 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %40 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %41 = load i32, i32* @MDIO_REG_GPHY_SHADOW_WR_ENA, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %38, %struct.bnx2x_phy* %39, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @bnx2x_cl22_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32) #1

declare dso_local i32 @bnx2x_cl22_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
