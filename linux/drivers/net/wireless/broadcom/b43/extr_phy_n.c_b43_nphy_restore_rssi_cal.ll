; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_restore_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_restore_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@R2057_NB_MASTER_CORE0 = common dso_local global i32 0, align 4
@R2057_VCM_MASK = common dso_local global i32 0, align 4
@R2057_NB_MASTER_CORE1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_restore_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_restore_rssi_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  store %struct.b43_phy_n* %9, %struct.b43_phy_n** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @b43_current_band(i32 %12)
  %14 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %18 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %169

23:                                               ; preds = %16
  %24 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %25 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %34 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %169

39:                                               ; preds = %32
  %40 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %41 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %4, align 8
  %44 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %45 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %39, %23
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 19
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %96

55:                                               ; preds = %48
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 7
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* @R2057_NB_MASTER_CORE0, align 4
  %64 = load i32, i32* @R2057_VCM_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b43_radio_maskset(%struct.b43_wldev* %62, i32 %63, i32 %65, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @R2057_NB_MASTER_CORE1, align 4
  %72 = load i32, i32* @R2057_VCM_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @b43_radio_maskset(%struct.b43_wldev* %70, i32 %71, i32 %73, i32 %76)
  br label %95

78:                                               ; preds = %55
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B2056_RX0, align 4
  %81 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %82 = or i32 %80, %81
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @b43_radio_maskset(%struct.b43_wldev* %79, i32 %82, i32 227, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B2056_RX1, align 4
  %89 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @b43_radio_maskset(%struct.b43_wldev* %87, i32 %90, i32 227, i32 %93)
  br label %95

95:                                               ; preds = %78, %61
  br label %96

96:                                               ; preds = %95, %54
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Z, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @b43_phy_write(%struct.b43_wldev* %97, i32 %98, i32 %101)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Z, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @b43_phy_write(%struct.b43_wldev* %103, i32 %104, i32 %107)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Z, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @b43_phy_write(%struct.b43_wldev* %109, i32 %110, i32 %113)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Z, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @b43_phy_write(%struct.b43_wldev* %115, i32 %116, i32 %119)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_X, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @b43_phy_write(%struct.b43_wldev* %121, i32 %122, i32 %125)
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %128 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_X, align 4
  %129 = load i32*, i32** %5, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @b43_phy_write(%struct.b43_wldev* %127, i32 %128, i32 %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_X, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @b43_phy_write(%struct.b43_wldev* %133, i32 %134, i32 %137)
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_X, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @b43_phy_write(%struct.b43_wldev* %139, i32 %140, i32 %143)
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Y, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @b43_phy_write(%struct.b43_wldev* %145, i32 %146, i32 %149)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Y, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 9
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @b43_phy_write(%struct.b43_wldev* %151, i32 %152, i32 %155)
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Y, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 10
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @b43_phy_write(%struct.b43_wldev* %157, i32 %158, i32 %161)
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Y, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 11
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @b43_phy_write(%struct.b43_wldev* %163, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %96, %38, %22
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
