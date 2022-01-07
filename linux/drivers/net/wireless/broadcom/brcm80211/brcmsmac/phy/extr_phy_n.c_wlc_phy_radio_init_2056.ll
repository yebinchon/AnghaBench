; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_init_2056.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_init_2056.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_regs = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@regs_SYN_2056 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_A1 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_A1 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_A1 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev5 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_rev5 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_rev5 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev6 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_rev6 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_rev6 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev7 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_rev7 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_rev7 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev8 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_rev8 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_rev8 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev11 = common dso_local global %struct.radio_regs* null, align 8
@regs_TX_2056_rev11 = common dso_local global %struct.radio_regs* null, align 8
@regs_RX_2056_rev11 = common dso_local global %struct.radio_regs* null, align 8
@RADIO_2056_SYN = common dso_local global i64 0, align 8
@RADIO_2056_TX0 = common dso_local global i64 0, align 8
@RADIO_2056_TX1 = common dso_local global i64 0, align 8
@RADIO_2056_RX0 = common dso_local global i64 0, align 8
@RADIO_2056_RX1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_radio_init_2056 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_radio_init_2056(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.radio_regs*, align 8
  %4 = alloca %struct.radio_regs*, align 8
  %5 = alloca %struct.radio_regs*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store %struct.radio_regs* null, %struct.radio_regs** %3, align 8
  store %struct.radio_regs* null, %struct.radio_regs** %4, align 8
  store %struct.radio_regs* null, %struct.radio_regs** %5, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @NREV_IS(i32 %9, i32 3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056, align 8
  store %struct.radio_regs* %13, %struct.radio_regs** %3, align 8
  %14 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056, align 8
  store %struct.radio_regs* %14, %struct.radio_regs** %4, align 8
  %15 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056, align 8
  store %struct.radio_regs* %15, %struct.radio_regs** %5, align 8
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @NREV_IS(i32 %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_A1, align 8
  store %struct.radio_regs* %24, %struct.radio_regs** %3, align 8
  %25 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_A1, align 8
  store %struct.radio_regs* %25, %struct.radio_regs** %4, align 8
  %26 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_A1, align 8
  store %struct.radio_regs* %26, %struct.radio_regs** %5, align 8
  br label %54

27:                                               ; preds = %16
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %52 [
    i32 5, label %32
    i32 6, label %36
    i32 7, label %40
    i32 9, label %40
    i32 8, label %44
    i32 11, label %48
  ]

32:                                               ; preds = %27
  %33 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev5, align 8
  store %struct.radio_regs* %33, %struct.radio_regs** %3, align 8
  %34 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_rev5, align 8
  store %struct.radio_regs* %34, %struct.radio_regs** %4, align 8
  %35 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_rev5, align 8
  store %struct.radio_regs* %35, %struct.radio_regs** %5, align 8
  br label %53

36:                                               ; preds = %27
  %37 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev6, align 8
  store %struct.radio_regs* %37, %struct.radio_regs** %3, align 8
  %38 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_rev6, align 8
  store %struct.radio_regs* %38, %struct.radio_regs** %4, align 8
  %39 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_rev6, align 8
  store %struct.radio_regs* %39, %struct.radio_regs** %5, align 8
  br label %53

40:                                               ; preds = %27, %27
  %41 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev7, align 8
  store %struct.radio_regs* %41, %struct.radio_regs** %3, align 8
  %42 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_rev7, align 8
  store %struct.radio_regs* %42, %struct.radio_regs** %4, align 8
  %43 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_rev7, align 8
  store %struct.radio_regs* %43, %struct.radio_regs** %5, align 8
  br label %53

44:                                               ; preds = %27
  %45 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev8, align 8
  store %struct.radio_regs* %45, %struct.radio_regs** %3, align 8
  %46 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_rev8, align 8
  store %struct.radio_regs* %46, %struct.radio_regs** %4, align 8
  %47 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_rev8, align 8
  store %struct.radio_regs* %47, %struct.radio_regs** %5, align 8
  br label %53

48:                                               ; preds = %27
  %49 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev11, align 8
  store %struct.radio_regs* %49, %struct.radio_regs** %3, align 8
  %50 = load %struct.radio_regs*, %struct.radio_regs** @regs_TX_2056_rev11, align 8
  store %struct.radio_regs* %50, %struct.radio_regs** %4, align 8
  %51 = load %struct.radio_regs*, %struct.radio_regs** @regs_RX_2056_rev11, align 8
  store %struct.radio_regs* %51, %struct.radio_regs** %5, align 8
  br label %53

52:                                               ; preds = %27
  br label %81

53:                                               ; preds = %48, %44, %40, %36, %32
  br label %54

54:                                               ; preds = %53, %23
  br label %55

55:                                               ; preds = %54, %12
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = load %struct.radio_regs*, %struct.radio_regs** %3, align 8
  %58 = load i64, i64* @RADIO_2056_SYN, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @wlc_phy_init_radio_regs(%struct.brcms_phy* %56, %struct.radio_regs* %57, i32 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = load %struct.radio_regs*, %struct.radio_regs** %4, align 8
  %63 = load i64, i64* @RADIO_2056_TX0, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @wlc_phy_init_radio_regs(%struct.brcms_phy* %61, %struct.radio_regs* %62, i32 %64)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = load %struct.radio_regs*, %struct.radio_regs** %4, align 8
  %68 = load i64, i64* @RADIO_2056_TX1, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @wlc_phy_init_radio_regs(%struct.brcms_phy* %66, %struct.radio_regs* %67, i32 %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %73 = load i64, i64* @RADIO_2056_RX0, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @wlc_phy_init_radio_regs(%struct.brcms_phy* %71, %struct.radio_regs* %72, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %78 = load i64, i64* @RADIO_2056_RX1, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @wlc_phy_init_radio_regs(%struct.brcms_phy* %76, %struct.radio_regs* %77, i32 %79)
  br label %81

81:                                               ; preds = %55, %52
  ret void
}

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_init_radio_regs(%struct.brcms_phy*, %struct.radio_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
