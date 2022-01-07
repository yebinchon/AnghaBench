; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_tx_power_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_tx_power_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i32*, i32 }

@B43_PHY_HT_TXPCTL_CMD_C1_COEFF = common dso_local global i32 0, align 4
@B43_PHY_HT_TXPCTL_CMD_C1_HWPCTLEN = common dso_local global i32 0, align 4
@B43_PHY_HT_TXPCTL_CMD_C1_PCTLEN = common dso_local global i32 0, align 4
@b43_phy_ht_tx_power_ctl.cmd_regs = internal constant [3 x i32] [i32 133, i32 132, i32 131], align 4
@b43_phy_ht_tx_power_ctl.status_regs = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_PHY_HT_TXPCTL_CMD_C1_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_tx_power_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_tx_power_ctl(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_ht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %10, align 8
  store %struct.b43_phy_ht* %11, %struct.b43_phy_ht** %5, align 8
  %12 = load i32, i32* @B43_PHY_HT_TXPCTL_CMD_C1_COEFF, align 4
  %13 = load i32, i32* @B43_PHY_HT_TXPCTL_CMD_C1_HWPCTLEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @B43_PHY_HT_TXPCTL_CMD_C1_PCTLEN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %2
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = call i32 @b43_phy_read(%struct.b43_wldev* %20, i32 133)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl.status_regs, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %30, i32 %34)
  %36 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %37 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @b43_phy_mask(%struct.b43_wldev* %47, i32 133, i32 %49)
  br label %109

51:                                               ; preds = %2
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @b43_phy_set(%struct.b43_wldev* %52, i32 133, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @b43_current_band(i32 %57)
  %59 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %72, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl.cmd_regs, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @b43_phy_write(%struct.b43_wldev* %66, i32 %70, i32 50)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %51
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %82 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @B43_PHY_HT_TXPCTL_CMD_C1_INIT, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_tx_power_ctl.cmd_regs, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %97 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @b43_phy_write(%struct.b43_wldev* %91, i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %90, %80
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %77

108:                                              ; preds = %77
  br label %109

109:                                              ; preds = %108, %46
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %112 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
