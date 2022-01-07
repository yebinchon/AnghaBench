; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_calc_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_calc_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_phy_res = type { i32, i64 }
%struct.il4965_rx_non_cfg_phy = type { i32*, i32 }

@IL49_AGC_DB_MASK = common dso_local global i32 0, align 4
@IL49_AGC_DB_POS = common dso_local global i32 0, align 4
@IL49_RX_PHY_FLAGS_ANTENNAE_MASK = common dso_local global i32 0, align 4
@IL49_RX_PHY_FLAGS_ANTENNAE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Rssi In A %d B %d C %d Max %d AGC dB %d\0A\00", align 1
@IL4965_RSSI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_rx_phy_res*)* @il4965_calc_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_calc_rssi(%struct.il_priv* %0, %struct.il_rx_phy_res* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_phy_res*, align 8
  %5 = alloca %struct.il4965_rx_non_cfg_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_phy_res* %1, %struct.il_rx_phy_res** %4, align 8
  %10 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %4, align 8
  %11 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.il4965_rx_non_cfg_phy*
  store %struct.il4965_rx_non_cfg_phy* %13, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %14 = load %struct.il4965_rx_non_cfg_phy*, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %15 = getelementptr inbounds %struct.il4965_rx_non_cfg_phy, %struct.il4965_rx_non_cfg_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = load i32, i32* @IL49_AGC_DB_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @IL49_AGC_DB_POS, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.il_rx_phy_res*, %struct.il_rx_phy_res** %4, align 8
  %23 = getelementptr inbounds %struct.il_rx_phy_res, %struct.il_rx_phy_res* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = load i32, i32* @IL49_RX_PHY_FLAGS_ANTENNAE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IL49_RX_PHY_FLAGS_ANTENNAE_OFFSET, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.il4965_rx_non_cfg_phy*, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %41 = getelementptr inbounds %struct.il4965_rx_non_cfg_phy, %struct.il4965_rx_non_cfg_phy* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.il4965_rx_non_cfg_phy*, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %56 = getelementptr inbounds %struct.il4965_rx_non_cfg_phy, %struct.il4965_rx_non_cfg_phy* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.il4965_rx_non_cfg_phy*, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %61 = getelementptr inbounds %struct.il4965_rx_non_cfg_phy, %struct.il4965_rx_non_cfg_phy* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.il4965_rx_non_cfg_phy*, %struct.il4965_rx_non_cfg_phy** %5, align 8
  %66 = getelementptr inbounds %struct.il4965_rx_non_cfg_phy, %struct.il4965_rx_non_cfg_phy* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @D_STATS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @IL4965_RSSI_OFFSET, align 4
  %77 = sub nsw i32 %75, %76
  ret i32 %77
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @D_STATS(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
