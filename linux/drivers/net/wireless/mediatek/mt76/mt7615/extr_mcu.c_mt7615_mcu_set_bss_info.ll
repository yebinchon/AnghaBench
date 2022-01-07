; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_set_bss_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_set_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mt7615_vif = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.req_hdr = type { i32, i32, i32, i32, [3 x i32] }
%struct.ieee80211_sta = type { i64 }
%struct.mt7615_sta = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@NETWORK_INFRA = common dso_local global i32 0, align 4
@EXT_BSSID_START = common dso_local global i64 0, align 8
@CONNECTION_INFRA_AP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CONNECTION_INFRA_STA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BSS_INFO_MAX_NUM = common dso_local global i32 0, align 4
@MCU_EXT_CMD_BSS_INFO_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mcu_set_bss_info(%struct.mt7615_dev* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt7615_vif*, align 8
  %9 = alloca %struct.req_hdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.req_hdr*, align 8
  %21 = alloca %struct.ieee80211_sta*, align 8
  %22 = alloca %struct.mt7615_sta*, align 8
  %23 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %27, %struct.mt7615_vif** %8, align 8
  store i32 32, i32* %10, align 4
  %28 = call i32 @BIT(i32 133)
  store i32 %28, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* @NETWORK_INFRA, align 4
  store i32 %29, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = call i32 @BIT(i32 131)
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %41 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EXT_BSSID_START, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = call i32 @BIT(i32 132)
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %45, %32
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %3
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %98 [
    i32 130, label %62
    i32 129, label %62
    i32 128, label %69
  ]

62:                                               ; preds = %58, %58
  %63 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %64 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* @CONNECTION_INFRA_AP, align 4
  store i32 %68, i32* %15, align 4
  br label %100

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = call i32 (...) @rcu_read_lock()
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %74, i32 %78)
  store %struct.ieee80211_sta* %79, %struct.ieee80211_sta** %21, align 8
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %21, align 8
  %81 = icmp ne %struct.ieee80211_sta* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %72
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %174

86:                                               ; preds = %72
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %21, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %90, %struct.mt7615_sta** %22, align 8
  %91 = load %struct.mt7615_sta*, %struct.mt7615_sta** %22, align 8
  %92 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %19, align 4
  %95 = call i32 (...) @rcu_read_unlock()
  br label %96

96:                                               ; preds = %86, %69
  %97 = load i32, i32* @CONNECTION_INFRA_STA, align 4
  store i32 %97, i32* %15, align 4
  br label %100

98:                                               ; preds = %58
  %99 = call i32 @WARN_ON(i32 1)
  br label %100

100:                                              ; preds = %98, %96, %62
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32* @kzalloc(i32 %101, i32 %102)
  store i32* %103, i32** %17, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %174

109:                                              ; preds = %100
  %110 = load i32*, i32** %17, align 8
  %111 = bitcast i32* %110 to %struct.req_hdr*
  store %struct.req_hdr* %111, %struct.req_hdr** %20, align 8
  %112 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %113 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.req_hdr*, %struct.req_hdr** %20, align 8
  %116 = getelementptr inbounds %struct.req_hdr, %struct.req_hdr* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = load %struct.req_hdr*, %struct.req_hdr** %20, align 8
  %120 = getelementptr inbounds %struct.req_hdr, %struct.req_hdr* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.req_hdr*, %struct.req_hdr** %20, align 8
  %122 = getelementptr inbounds %struct.req_hdr, %struct.req_hdr* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 28
  store i32* %124, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %161, %109
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @BSS_INFO_MAX_NUM, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @BIT(i32 %131)
  %133 = and i32 %130, %132
  %134 = call i32 @ffs(i32 %133)
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %23, align 4
  switch i32 %136, label %159 [
    i32 131, label %137
    i32 133, label %144
    i32 132, label %153
  ]

137:                                              ; preds = %129
  %138 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @mt7615_mcu_bss_info_omac_header(%struct.mt7615_vif* %138, i32* %139, i32 %140)
  %142 = load i32*, i32** %18, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  store i32* %143, i32** %18, align 8
  br label %160

144:                                              ; preds = %129
  %145 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @mt7615_mcu_bss_info_basic_header(%struct.ieee80211_vif* %145, i32* %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %18, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %18, align 8
  br label %160

153:                                              ; preds = %129
  %154 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @mt7615_mcu_bss_info_ext_header(%struct.mt7615_vif* %154, i32* %155)
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32* %158, i32** %18, align 8
  br label %160

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159, %153, %144, %137
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %125

164:                                              ; preds = %125
  %165 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %166 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %165, i32 0, i32 0
  %167 = load i32, i32* @MCU_EXT_CMD_BSS_INFO_UPDATE, align 4
  %168 = load i32*, i32** %17, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @__mt76_mcu_send_msg(i32* %166, i32 %167, i32* %168, i32 %169, i32 1)
  store i32 %170, i32* %11, align 4
  %171 = load i32*, i32** %17, align 8
  %172 = call i32 @kfree(i32* %171)
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %164, %106, %82
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mt7615_mcu_bss_info_omac_header(%struct.mt7615_vif*, i32*, i32) #1

declare dso_local i32 @mt7615_mcu_bss_info_basic_header(%struct.ieee80211_vif*, i32*, i32, i32, i32) #1

declare dso_local i32 @mt7615_mcu_bss_info_ext_header(%struct.mt7615_vif*, i32*) #1

declare dso_local i32 @__mt76_mcu_send_msg(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
