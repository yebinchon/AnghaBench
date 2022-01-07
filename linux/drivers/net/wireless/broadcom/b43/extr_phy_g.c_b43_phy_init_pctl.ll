; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_phy_init_pctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_phy_init_pctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i64, i64 }
%struct.b43_phy = type { i64, i32, i64, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i64, i64, i32, i32 }
%struct.b43_rfatt = type { i32, i32 }
%struct.b43_bbatt = type { i32, i32 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@B43_MMIO_PHY0 = common dso_local global i32 0, align 4
@B43_PHY_ITSSI = common dso_local global i32 0, align 4
@B43_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [107 x i8] c"!WARNING! Idle-TSSI phy->cur_idle_tssi measuring failed. (cur=%d, tgt=%d). Disabling TX power adjustment.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_init_pctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_init_pctl(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca %struct.b43_rfatt, align 4
  %6 = alloca %struct.b43_bbatt, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.b43_rfatt, align 4
  %9 = alloca %struct.b43_bbatt, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 2
  store %struct.b43_phy* %11, %struct.b43_phy** %3, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 5
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %13, align 8
  store %struct.b43_phy_g* %14, %struct.b43_phy_g** %4, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @B43_PHYTYPE_G, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @B43_WARN_ON(i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %157

38:                                               ; preds = %29, %1
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 40, i32 32792)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_MMIO_PHY0, align 4
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_MMIO_PHY0, align 4
  %45 = call i32 @b43_read16(%struct.b43_wldev* %43, i32 %44)
  %46 = and i32 %45, 65503
  %47 = call i32 @b43_write16(%struct.b43_wldev* %41, i32 %42, i32 %46)
  %48 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %49 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %157

53:                                               ; preds = %38
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_hardware_pctl_early_init(%struct.b43_wldev* %54)
  %56 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %57 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %152

60:                                               ; preds = %53
  %61 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 8272
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %67 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @b43_radio_maskset(%struct.b43_wldev* %71, i32 118, i32 247, i32 132)
  br label %99

73:                                               ; preds = %65, %60
  %74 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %75 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %74, i32 0, i32 4
  %76 = call i32 @memcpy(%struct.b43_rfatt* %5, i32* %75, i32 8)
  %77 = bitcast %struct.b43_bbatt* %6 to %struct.b43_rfatt*
  %78 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %79 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %78, i32 0, i32 3
  %80 = call i32 @memcpy(%struct.b43_rfatt* %77, i32* %79, i32 8)
  %81 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %82 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  %84 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %9, i32 0, i32 0
  store i32 11, i32* %84, align 4
  %85 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %86 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %92

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %8, i32 0, i32 0
  store i32 15, i32* %90, align 4
  %91 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %8, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %95

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %8, i32 0, i32 0
  store i32 9, i32* %93, align 4
  %94 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %8, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = bitcast %struct.b43_bbatt* %9 to %struct.b43_rfatt*
  %98 = call i32 @b43_set_txpower_g(%struct.b43_wldev* %96, %struct.b43_rfatt* %97, %struct.b43_rfatt* %8, i64 0)
  br label %99

99:                                               ; preds = %95, %70
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = call i32 @b43_dummy_transmission(%struct.b43_wldev* %100, i32 0, i32 1)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_PHY_ITSSI, align 4
  %104 = call i64 @b43_phy_read(%struct.b43_wldev* %102, i32 %103)
  %105 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %106 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* @B43_DEBUG, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %99
  %110 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %111 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %114 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = call i32 @abs(i64 %116)
  %118 = icmp sge i32 %117, 20
  br i1 %118, label %119, label %132

119:                                              ; preds = %109
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %124 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %127 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @b43dbg(i32 %122, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i64 %125, i64 %128)
  %130 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %131 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %119, %109
  br label %133

133:                                              ; preds = %132, %99
  %134 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 8272
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %140 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i32 @b43_radio_mask(%struct.b43_wldev* %144, i32 118, i32 65403)
  br label %151

146:                                              ; preds = %138, %133
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = bitcast %struct.b43_bbatt* %6 to %struct.b43_rfatt*
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @b43_set_txpower_g(%struct.b43_wldev* %147, %struct.b43_rfatt* %148, %struct.b43_rfatt* %5, i64 %149)
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %53
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = call i32 @b43_hardware_pctl_init_gphy(%struct.b43_wldev* %153)
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = call i32 @b43_shm_clear_tssi(%struct.b43_wldev* %155)
  br label %157

157:                                              ; preds = %152, %52, %37
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hardware_pctl_early_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.b43_rfatt*, i32*, i32) #1

declare dso_local i32 @b43_set_txpower_g(%struct.b43_wldev*, %struct.b43_rfatt*, %struct.b43_rfatt*, i64) #1

declare dso_local i32 @b43_dummy_transmission(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @b43dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_hardware_pctl_init_gphy(%struct.b43_wldev*) #1

declare dso_local i32 @b43_shm_clear_tssi(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
