; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_config_sfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_config_sfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { i64*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@INT_PHY = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@ETH_PHY_SFP_1G_FIBER = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Setting 10G SFI\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Setting 1G Fiber\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_warpcore_config_sfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_config_sfi(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %7 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %7, %struct.link_params* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.link_params*, %struct.link_params** %4, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %6, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @bnx2x_warpcore_clear_regs(%struct.bnx2x_phy* %13, %struct.link_params* %14, i32 %15)
  %17 = load %struct.link_params*, %struct.link_params** %4, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* @INT_PHY, align 4
  %21 = call i64 @LINK_CONFIG_IDX(i32 %20)
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPEED_10000, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETH_PHY_SFP_1G_FIBER, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @NETIF_MSG_LINK, align 4
  %34 = call i32 @DP(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %36 = load %struct.link_params*, %struct.link_params** %4, align 8
  %37 = call i32 @bnx2x_warpcore_set_10G_XFI(%struct.bnx2x_phy* %35, %struct.link_params* %36, i32 0)
  br label %44

38:                                               ; preds = %26, %2
  %39 = load i32, i32* @NETIF_MSG_LINK, align 4
  %40 = call i32 @DP(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %42 = load %struct.link_params*, %struct.link_params** %4, align 8
  %43 = call i32 @bnx2x_warpcore_set_sgmii_speed(%struct.bnx2x_phy* %41, %struct.link_params* %42, i32 1, i32 0)
  br label %44

44:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_warpcore_clear_regs(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i64 @LINK_CONFIG_IDX(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_warpcore_set_10G_XFI(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_warpcore_set_sgmii_speed(%struct.bnx2x_phy*, %struct.link_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
