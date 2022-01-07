; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.mt76x02_vif = type { i32, %struct.mt76_wcid }
%struct.mt76_wcid = type { i32, i32, i32 }
%struct.mt76x02_sta = type { %struct.mt76_wcid }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@SET_KEY = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.mt76x02_dev*, align 8
  %13 = alloca %struct.mt76x02_vif*, align 8
  %14 = alloca %struct.mt76x02_sta*, align 8
  %15 = alloca %struct.mt76_wcid*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %19, align 8
  store %struct.mt76x02_dev* %20, %struct.mt76x02_dev** %12, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %24, %struct.mt76x02_vif** %13, align 8
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
    i32 129, label %31
    i32 130, label %31
    i32 131, label %31
  ]

31:                                               ; preds = %5, %5, %5, %5
  br label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %192

35:                                               ; preds = %31
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41, %35
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 131
  br i1 %56, label %57, label %67

57:                                               ; preds = %52, %47
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %192

67:                                               ; preds = %57, %52, %41
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %69 = call i64 @mt76_is_usb(%struct.mt76x02_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %192

87:                                               ; preds = %77, %71, %67
  %88 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %89 = icmp ne %struct.ieee80211_sta* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.mt76x02_sta*
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi %struct.mt76x02_sta* [ %94, %90 ], [ null, %95 ]
  store %struct.mt76x02_sta* %97, %struct.mt76x02_sta** %14, align 8
  %98 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %14, align 8
  %99 = icmp ne %struct.mt76x02_sta* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %14, align 8
  %102 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %101, i32 0, i32 0
  br label %106

103:                                              ; preds = %96
  %104 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %13, align 8
  %105 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %104, i32 0, i32 1
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi %struct.mt76_wcid* [ %102, %100 ], [ %105, %103 ]
  store %struct.mt76_wcid* %107, %struct.mt76_wcid** %15, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SET_KEY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %113 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %119 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %111
  %127 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %128 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %129 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %133 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %111
  br label %147

135:                                              ; preds = %106
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %138 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %143 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %142, i32 0, i32 0
  store i32 -1, i32* %143, align 4
  %144 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %145 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %135
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %11, align 8
  br label %147

147:                                              ; preds = %146, %134
  %148 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %149 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %148, i32 0, i32 0
  %150 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %151 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %152 = call i32 @mt76_wcid_key_setup(i32* %149, %struct.mt76_wcid* %150, %struct.ieee80211_key_conf* %151)
  %153 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %14, align 8
  %154 = icmp ne %struct.mt76x02_sta* %153, null
  br i1 %154, label %184, label %155

155:                                              ; preds = %147
  %156 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %157 = icmp ne %struct.ieee80211_key_conf* %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %160 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %16, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %158, %155
  %165 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %166 = load %struct.mt76_wcid*, %struct.mt76_wcid** %15, align 8
  %167 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %170 = call i32 @mt76x02_mac_wcid_set_key(%struct.mt76x02_dev* %165, i32 %168, %struct.ieee80211_key_conf* %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %17, align 4
  store i32 %174, i32* %6, align 4
  br label %192

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %158
  %177 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %178 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %13, align 8
  %179 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %183 = call i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev* %177, i32 %180, i32 %181, %struct.ieee80211_key_conf* %182)
  store i32 %183, i32* %6, align 4
  br label %192

184:                                              ; preds = %147
  %185 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  %186 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %14, align 8
  %187 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %191 = call i32 @mt76x02_mac_wcid_set_key(%struct.mt76x02_dev* %185, i32 %189, %struct.ieee80211_key_conf* %190)
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %184, %176, %173, %84, %64, %32
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i64 @mt76_is_usb(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wcid_key_setup(i32*, %struct.mt76_wcid*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mt76x02_mac_wcid_set_key(%struct.mt76x02_dev*, i32, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mt76x02_mac_shared_key_setup(%struct.mt76x02_dev*, i32, i32, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
