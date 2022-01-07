; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_wiphy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_wiphy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i32, i64, i32, i32*, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.orinoco_private = type { i64, i32, i32, i32, i64, i32, i32, i32*, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@FIRMWARE_TYPE_AGERE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@force_monitor = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@orinoco_rates = common dso_local global i32 0, align 4
@NUM_CHANNELS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_wiphy_register(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %6)
  store %struct.orinoco_private* %7, %struct.orinoco_private** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %9 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FIRMWARE_TYPE_AGERE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %15 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %23 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %25 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %24, i32 0, i32 14
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %32 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %37 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* @force_monitor, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @orinoco_rates, align 4
  %52 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %53 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @orinoco_rates, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %58 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %87, %50
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @NUM_CHANNELS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %66 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %76 = call i32 @ieee80211_channel_to_frequency(i32 %74, i64 %75)
  %77 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %78 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %77, i32 0, i32 12
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %72, %64
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %60

90:                                               ; preds = %60
  %91 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %92 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %91, i32 0, i32 12
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = ptrtoint %struct.TYPE_3__* %93 to i32
  %95 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %96 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %100 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %103 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %102, i32 0, i32 11
  %104 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %105 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %104, i32 0, i32 8
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %105, align 8
  %107 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %107
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %108, align 8
  %109 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %110 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %111 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %4, align 4
  %112 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %113 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %112, i32 0, i32 10
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %90
  %117 = load i32, i32* @WLAN_CIPHER_SUITE_WEP40, align 4
  %118 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %119 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  %126 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %127 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %126, i32 0, i32 9
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %116
  %131 = load i32, i32* @WLAN_CIPHER_SUITE_WEP104, align 4
  %132 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %133 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %130, %116
  br label %141

141:                                              ; preds = %140, %90
  %142 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %143 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i32, i32* @WLAN_CIPHER_SUITE_TKIP, align 4
  %148 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %149 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %146, %141
  %157 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %158 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %157, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %161 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %160, i32 0, i32 6
  store i32* %159, i32** %161, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %164 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %166 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %169 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %171 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %156
  %175 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %176 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  %179 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %180 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %179, i32 0, i32 4
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %174, %156
  %182 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %183 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %186 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %188 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %191 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %193 = call i32 @wiphy_register(%struct.wiphy* %192)
  ret i32 %193
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i64) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
