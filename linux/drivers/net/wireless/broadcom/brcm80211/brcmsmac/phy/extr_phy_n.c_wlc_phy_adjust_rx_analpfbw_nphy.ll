; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_rx_analpfbw_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_rx_analpfbw_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADIO_2056_RX_RXLPF_RCCAL_LPC = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_phy_adjust_rx_analpfbw_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_adjust_rx_analpfbw_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NREV_GE(i32 %8, i32 3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %2
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @NREV_LT(i32 %15, i32 7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %11
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CHSPEC_CHANNEL(i32 %21)
  %23 = icmp eq i32 %22, 11
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CHSPEC_IS40(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = load i32, i32* @RADIO_2056_RX_RXLPF_RCCAL_LPC, align 4
  %38 = load i32, i32* @RADIO_2056_RX0, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %42, %43
  %45 = or i32 %44, 128
  %46 = call i32 @write_radio_reg(%struct.brcms_phy* %36, i32 %39, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %35, %30
  br label %68

50:                                               ; preds = %24, %18
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = load i32, i32* @RADIO_2056_RX_RXLPF_RCCAL_LPC, align 4
  %58 = load i32, i32* @RADIO_2056_RX0, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 128
  %64 = call i32 @write_radio_reg(%struct.brcms_phy* %56, i32 %59, i32 %63)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %55, %50
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %11, %2
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
