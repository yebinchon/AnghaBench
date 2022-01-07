; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i64 }

@EMAC_TX_MODE_REG = common dso_local global i64 0, align 8
@EMAC_TX_MODE_ABORTED_FRAME_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTL0_REG = common dso_local global i64 0, align 8
@EMAC_MAC_CTL0_RX_FLOW_CTL_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTL0_TX_FLOW_CTL_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTL1_REG = common dso_local global i64 0, align 8
@EMAC_MAC_CTL1_LEN_CHECK_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTL1_CRC_EN = common dso_local global i32 0, align 4
@EMAC_MAC_CTL1_PAD_EN = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT_FULL_DUPLEX = common dso_local global i32 0, align 4
@EMAC_MAC_IPGT_REG = common dso_local global i64 0, align 8
@EMAC_MAC_IPGR_IPG1 = common dso_local global i32 0, align 4
@EMAC_MAC_IPGR_IPG2 = common dso_local global i32 0, align 4
@EMAC_MAC_IPGR_REG = common dso_local global i64 0, align 8
@EMAC_MAC_CLRT_COLLISION_WINDOW = common dso_local global i32 0, align 4
@EMAC_MAC_CLRT_RM = common dso_local global i32 0, align 4
@EMAC_MAC_CLRT_REG = common dso_local global i64 0, align 8
@EMAC_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@EMAC_MAC_MAXF_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_board_info* %6, %struct.emac_board_info** %3, align 8
  %7 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %8 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_TX_MODE_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EMAC_TX_MODE_ABORTED_FRAME_EN, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %17 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMAC_TX_MODE_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %23 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EMAC_MAC_CTL0_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @EMAC_MAC_CTL0_RX_FLOW_CTL_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EMAC_MAC_CTL0_TX_FLOW_CTL_EN, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %34 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EMAC_MAC_CTL0_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %40 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EMAC_MAC_CTL1_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @EMAC_MAC_CTL1_LEN_CHECK_EN, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @EMAC_MAC_CTL1_CRC_EN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @EMAC_MAC_CTL1_PAD_EN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %56 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EMAC_MAC_CTL1_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load i32, i32* @EMAC_MAC_IPGT_FULL_DUPLEX, align 4
  %62 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %63 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EMAC_MAC_IPGT_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* @EMAC_MAC_IPGR_IPG1, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* @EMAC_MAC_IPGR_IPG2, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %73 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EMAC_MAC_IPGR_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @EMAC_MAC_CLRT_COLLISION_WINDOW, align 4
  %79 = shl i32 %78, 8
  %80 = load i32, i32* @EMAC_MAC_CLRT_RM, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %83 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EMAC_MAC_CLRT_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32, i32* @EMAC_MAX_FRAME_LEN, align 4
  %89 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %90 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EMAC_MAC_MAXF_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  ret i32 0
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
