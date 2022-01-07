; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_idle_tssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_idle_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.TYPE_5__*, %struct.b43_phy_n* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.b43_phy_n = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@N_RSSI_TSSI_2G = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_ctl_idle_tssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  store %struct.b43_phy* %8, %struct.b43_phy** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 2
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  store %struct.b43_phy_n* %12, %struct.b43_phy_n** %4, align 8
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %160

25:                                               ; preds = %1
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %34 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %35, 19
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev* %38, i32 4096, i32 0, i32 3, i32 0, i32 0)
  br label %58

40:                                               ; preds = %32
  %41 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %42 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 7
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %46, i32 4096, i32 0, i32 3, i32 0, i32 0)
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %50 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %54, i32 8192, i32 0, i32 3, i32 0)
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %37
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_nphy_tx_tone(%struct.b43_wldev* %61, i32 4000, i32 0, i32 0, i32 0, i32 0)
  %63 = call i32 @udelay(i32 20)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @N_RSSI_TSSI_2G, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %67 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %64, i32 %65, i32* %66, i32 1)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @N_RSSI_W1, align 4
  %72 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %70, i32 0, i32 %71)
  %73 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %74 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 19
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = call i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev* %78, i32 4096, i32 0, i32 3, i32 1, i32 0)
  br label %98

80:                                               ; preds = %58
  %81 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %82 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 7
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %86, i32 4096, i32 0, i32 3, i32 1, i32 0)
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %90 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %94, i32 8192, i32 0, i32 3, i32 1)
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %77
  %99 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %100 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 19
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %160

104:                                              ; preds = %98
  %105 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %106 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 3
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = ashr i32 %110, 24
  %112 = and i32 %111, 255
  %113 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %114 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %5, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %122 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 4
  br label %142

126:                                              ; preds = %104
  %127 = load i32, i32* %5, align 4
  %128 = ashr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %131 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, 255
  %137 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %138 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 4
  br label %142

142:                                              ; preds = %126, %109
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = ashr i32 %144, 24
  %146 = and i32 %145, 255
  %147 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %148 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 4
  %152 = load i32, i32* %5, align 4
  %153 = ashr i32 %152, 8
  %154 = and i32 %153, 255
  %155 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %156 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %143, %103, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev19(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_stop_playback(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_tone(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_nphy_poll_rssi(%struct.b43_wldev*, i32, i32*, i32) #2

declare dso_local i32 @b43_nphy_rssi_select(%struct.b43_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
