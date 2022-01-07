; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_ie_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_ie_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_p2p_noa_info = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_p2p_noa_attr = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@WMI_P2P_OPPPS_CTWINDOW_OFFSET = common dso_local global i32 0, align 4
@WMI_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.wmi_p2p_noa_info*)* @ath10k_p2p_noa_ie_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_p2p_noa_ie_fill(i32* %0, i64 %1, %struct.wmi_p2p_noa_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wmi_p2p_noa_info*, align 8
  %7 = alloca %struct.ieee80211_p2p_noa_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wmi_p2p_noa_info* %2, %struct.wmi_p2p_noa_info** %6, align 8
  %15 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %16 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WMI_P2P_OPPPS_CTWINDOW_OFFSET, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @WMI_P2P_OPPPS_ENABLE_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %29 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %34, 2
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @WLAN_OUI_WFA, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @WLAN_OUI_WFA, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @WLAN_OUI_WFA, align 4
  %50 = ashr i32 %49, 0
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = bitcast i32* %63 to %struct.ieee80211_p2p_noa_attr*
  store %struct.ieee80211_p2p_noa_attr* %64, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %65 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %66 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %3
  %76 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %77 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %3
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %148, %81
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %151

86:                                               ; preds = %82
  %87 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %88 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @__le32_to_cpu(i32 %94)
  %96 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %95, i32* %102, align 4
  %103 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %104 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %110, i32* %117, align 4
  %118 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %119 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load %struct.wmi_p2p_noa_info*, %struct.wmi_p2p_noa_info** %6, align 8
  %134 = getelementptr inbounds %struct.wmi_p2p_noa_info, %struct.wmi_p2p_noa_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %7, align 8
  %142 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %86
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %82

151:                                              ; preds = %82
  store i32 2, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = add i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @__cpu_to_le16(i32 %159)
  %161 = load i32*, i32** %11, align 8
  store i32 %160, i32* %161, align 4
  ret void
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
