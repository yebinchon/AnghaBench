; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_update_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sk_buff = type { i64, i64 }
%struct.carl9170_vif_info = type { i64, %struct.sk_buff* }

@ENOMEM = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_LENGTH_MAX = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"beacon does not fit into device memory!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"no support for beacons bigger than %d (yours:%d).\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_HT1 = common dso_local global i64 0, align 8
@AR9170_MAC_REG_BCN_HT2 = common dso_local global i64 0, align 8
@AR9170_MAC_REG_BCN_PLCP = common dso_local global i64 0, align 8
@CARL9170_BCN_CTRL_CAB_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_update_beacon(%struct.ar9170* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.carl9170_vif_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i64* null, i64** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %21 = call %struct.carl9170_vif_info* @carl9170_pick_beaconing_vif(%struct.ar9170* %20)
  store %struct.carl9170_vif_info* %21, %struct.carl9170_vif_info** %7, align 8
  %22 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %23 = icmp ne %struct.carl9170_vif_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %217

25:                                               ; preds = %2
  %26 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %30 = call i32 @carl9170_get_vif(%struct.carl9170_vif_info* %29)
  %31 = call %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.TYPE_4__* %28, i32 %30, i32* null, i32* null)
  store %struct.sk_buff* %31, %struct.sk_buff** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %17, align 4
  br label %223

37:                                               ; preds = %25
  %38 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %8, align 8
  %45 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %46 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %45, i32 0, i32 1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %51 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %50, i32 0, i32 1
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %9, align 8
  br label %56

56:                                               ; preds = %49, %37
  %57 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %58 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AR9170_MAC_BCN_LENGTH_MAX, align 8
  %61 = mul nsw i64 %59, %60
  store i64 %61, i64* %13, align 8
  %62 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %63 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %14, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FCS_LEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @roundup(i64 %72, i32 4)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %15, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %78 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %76, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %56
  %83 = call i64 (...) @net_ratelimit()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %87 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @wiphy_err(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  br label %219

95:                                               ; preds = %56
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @AR9170_MAC_BCN_LENGTH_MAX, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = call i64 (...) @net_ratelimit()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %104 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* @AR9170_MAC_BCN_LENGTH_MAX, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 (i32, i8*, ...) @wiphy_err(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %102, %99
  %112 = load i32, i32* @EMSGSIZE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %17, align 4
  br label %219

114:                                              ; preds = %95
  %115 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call i32 @carl9170_tx_beacon_physet(%struct.ar9170* %115, %struct.sk_buff* %116, i64* %11, i64* %12)
  store i32 %117, i32* %18, align 4
  %118 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %119 = call i32 @carl9170_async_regwrite_begin(%struct.ar9170* %118)
  %120 = load i64, i64* @AR9170_MAC_REG_BCN_HT1, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @carl9170_async_regwrite(i64 %120, i64 %121)
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i64, i64* @AR9170_MAC_REG_BCN_HT2, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @carl9170_async_regwrite(i64 %126, i64 %127)
  br label %133

129:                                              ; preds = %114
  %130 = load i64, i64* @AR9170_MAC_REG_BCN_PLCP, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @carl9170_async_regwrite(i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %129, %125
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %171, %133
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @DIV_ROUND_UP(i64 %138, i32 4)
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %134
  %142 = load i64*, i64** %9, align 8
  %143 = icmp ne i64* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i64*, i64** %8, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %149, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %171

157:                                              ; preds = %144, %141
  %158 = load i64*, i64** %8, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @le32_to_cpu(i64 %162)
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %14, align 8
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 4, %165
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %164, %167
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @carl9170_async_regwrite(i64 %168, i64 %169)
  br label %171

171:                                              ; preds = %157, %156
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %134

174:                                              ; preds = %134
  %175 = call i32 (...) @carl9170_async_regwrite_finish()
  %176 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %177 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %176, i32 0, i32 1
  %178 = load %struct.sk_buff*, %struct.sk_buff** %177, align 8
  %179 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %178)
  %180 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %181 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %180, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %181, align 8
  %182 = call i32 (...) @carl9170_async_regwrite_result()
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %174
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %188 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %187, i32 0, i32 1
  store %struct.sk_buff* %186, %struct.sk_buff** %188, align 8
  br label %189

189:                                              ; preds = %185, %174
  %190 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %191 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %190, i32 0, i32 0
  %192 = call i32 @spin_unlock_bh(i32* %191)
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %223

196:                                              ; preds = %189
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %201 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %7, align 8
  %202 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @CARL9170_BCN_CTRL_CAB_TRIGGER, align 4
  %205 = load i64, i64* %14, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @FCS_LEN, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @carl9170_bcn_ctrl(%struct.ar9170* %200, i64 %203, i32 %204, i64 %205, i64 %210)
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %199
  br label %223

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215, %196
  br label %217

217:                                              ; preds = %216, %24
  %218 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %228

219:                                              ; preds = %111, %92
  %220 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %221 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %220, i32 0, i32 0
  %222 = call i32 @spin_unlock_bh(i32* %221)
  br label %223

223:                                              ; preds = %219, %214, %195, %34
  %224 = call i32 (...) @rcu_read_unlock()
  %225 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %226 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %225)
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %223, %217
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.carl9170_vif_info* @carl9170_pick_beaconing_vif(%struct.ar9170*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i32 @carl9170_get_vif(%struct.carl9170_vif_info*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @carl9170_tx_beacon_physet(%struct.ar9170*, %struct.sk_buff*, i64*, i64*) #1

declare dso_local i32 @carl9170_async_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_async_regwrite(i64, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @carl9170_async_regwrite_finish(...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_async_regwrite_result(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @carl9170_bcn_ctrl(%struct.ar9170*, i64, i32, i64, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
