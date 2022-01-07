; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_iq_est = type { i32, i32 }

@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32, i32, i32)* @wlc_lcnphy_rx_iq_cal_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rx_iq_cal_gain(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lcnphy_iq_est, align 4
  %15 = alloca %struct.lcnphy_iq_est, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @wlc_lcnphy_set_rx_gain_by_distribution(%struct.brcms_phy* %16, i32 0, i32 0, i32 0, i32 %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %22 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %21, i32 1)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %24 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %23, i32 2000, i32 20, i32 0)
  %25 = call i32 @udelay(i32 500)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %27 = load i32, i32* @RADIO_2064_REG112, align 4
  %28 = call i32 @write_radio_reg(%struct.brcms_phy* %26, i32 %27, i32 0)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %30 = call i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy* %29, i32 1024, i32 32, %struct.lcnphy_iq_est* %15)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

33:                                               ; preds = %4
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %35 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %34, i32 2000, i32 40, i32 0)
  %36 = call i32 @udelay(i32 500)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %38 = load i32, i32* @RADIO_2064_REG112, align 4
  %39 = call i32 @write_radio_reg(%struct.brcms_phy* %37, i32 %38, i32 0)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %41 = call i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy* %40, i32 1024, i32 32, %struct.lcnphy_iq_est* %14)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %84

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 2
  %51 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %12, align 4
  %54 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %15, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %13, align 4
  %63 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %44
  %68 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %14, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %14, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %77, %72, %67, %44
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82, %43, %32
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @wlc_lcnphy_set_rx_gain_by_distribution(%struct.brcms_phy*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy*, i32, i32, %struct.lcnphy_iq_est*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
