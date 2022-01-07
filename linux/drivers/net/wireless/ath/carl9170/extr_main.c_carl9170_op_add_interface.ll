; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ieee80211_vif = type { i32, i32, i32, i32, i32, i32, i64, i32, i32* }
%struct.carl9170_vif_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PS_OFF_VIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @carl9170_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.carl9170_vif_info*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ar9170*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.carl9170_vif_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.carl9170_vif_info*
  store %struct.carl9170_vif_info* %16, %struct.carl9170_vif_info** %5, align 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.ar9170*, %struct.ar9170** %18, align 8
  store %struct.ar9170* %19, %struct.ar9170** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %21 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %25 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %2
  %29 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %30 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %33 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %35 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %34, i32 0, i32 8
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %38 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_kfree_skb_any(i32* %39)
  %41 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %42 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 8
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %174

46:                                               ; preds = %2
  %47 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %48 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %47)
  store %struct.ieee80211_vif* %48, %struct.ieee80211_vif** %6, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %50 = icmp ne %struct.ieee80211_vif* %49, null
  br i1 %50, label %51, label %111

51:                                               ; preds = %46
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %108 [
    i32 128, label %55
    i32 129, label %82
    i32 130, label %82
  ]

55:                                               ; preds = %51
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %110

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 130
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %77, %struct.ieee80211_vif** %7, align 8
  br label %110

78:                                               ; preds = %71, %66, %61
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  %81 = call i32 (...) @rcu_read_unlock()
  br label %250

82:                                               ; preds = %51, %51
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 129
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %93, %87, %82
  br label %110

104:                                              ; preds = %98
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %10, align 4
  %107 = call i32 (...) @rcu_read_unlock()
  br label %250

108:                                              ; preds = %51
  %109 = call i32 (...) @rcu_read_unlock()
  br label %250

110:                                              ; preds = %103, %76, %60
  br label %111

111:                                              ; preds = %110, %46
  %112 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %113 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %112, i32 0, i32 4
  %114 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %115 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bitmap_find_free_region(i32* %113, i32 %117, i32 0)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = call i32 (...) @rcu_read_unlock()
  %123 = load i32, i32* @ENOSPC, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  br label %250

125:                                              ; preds = %111
  %126 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %127 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @BUG_ON(i32 %136)
  %138 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %139 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %142 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %144 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %146 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %150 = icmp ne %struct.ieee80211_vif* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %125
  %152 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %153 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %152, i32 0, i32 4
  %154 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %155 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %154, i32 0, i32 7
  %156 = call i32 @list_add_rcu(i32* %153, i32* %155)
  br label %163

157:                                              ; preds = %125
  %158 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %159 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %158, i32 0, i32 4
  %160 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %161 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %160, i32 0, i32 7
  %162 = call i32 @list_add_tail_rcu(i32* %159, i32* %161)
  br label %163

163:                                              ; preds = %157, %151
  %164 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %165 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %164, i32 0, i32 3
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %173 = call i32 @rcu_assign_pointer(i32 %171, %struct.ieee80211_vif* %172)
  br label %174

174:                                              ; preds = %163, %28
  %175 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %176 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %175)
  store %struct.ieee80211_vif* %176, %struct.ieee80211_vif** %6, align 8
  %177 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %178 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %179 = icmp eq %struct.ieee80211_vif* %177, %178
  br i1 %179, label %180, label %216

180:                                              ; preds = %174
  %181 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %182 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %185 = bitcast %struct.carl9170_vif_info* %184 to %struct.ieee80211_vif*
  %186 = call i32 @rcu_assign_pointer(i32 %183, %struct.ieee80211_vif* %185)
  %187 = call i32 (...) @rcu_read_unlock()
  %188 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %189 = icmp ne %struct.ieee80211_vif* %188, null
  br i1 %189, label %190, label %208

190:                                              ; preds = %180
  %191 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = bitcast i8* %194 to %struct.carl9170_vif_info*
  store %struct.carl9170_vif_info* %195, %struct.carl9170_vif_info** %11, align 8
  %196 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %197 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %11, align 8
  %198 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %201 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @carl9170_mod_virtual_mac(%struct.ar9170* %196, i32 %199, i32 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %250

207:                                              ; preds = %190
  br label %208

208:                                              ; preds = %207, %180
  %209 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %210 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %211 = call i32 @carl9170_init_interface(%struct.ar9170* %209, %struct.ieee80211_vif* %210)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %250

215:                                              ; preds = %208
  br label %228

216:                                              ; preds = %174
  %217 = call i32 (...) @rcu_read_unlock()
  %218 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %221 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @carl9170_mod_virtual_mac(%struct.ar9170* %218, i32 %219, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  br label %250

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %227, %215
  %229 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %230 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %228
  %235 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %236 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %237 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = mul nsw i32 %240, 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %239, %242
  %244 = call i32 @carl9170_write_reg(%struct.ar9170* %235, i64 %243, i32 0)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %234
  br label %250

248:                                              ; preds = %234
  br label %249

249:                                              ; preds = %248, %228
  br label %250

250:                                              ; preds = %249, %247, %226, %214, %206, %121, %108, %104, %78
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %283

253:                                              ; preds = %250
  %254 = load i32, i32* %9, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %253
  %257 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %258 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %257, i32 0, i32 0
  store i32 0, i32* %258, align 8
  %259 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %260 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %259, i32 0, i32 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @bitmap_release_region(i32* %260, i32 %261, i32 0)
  %263 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %264 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %268 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %267, i32 0, i32 3
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @RCU_INIT_POINTER(i32 %274, i32* null)
  %276 = load %struct.carl9170_vif_info*, %struct.carl9170_vif_info** %5, align 8
  %277 = getelementptr inbounds %struct.carl9170_vif_info, %struct.carl9170_vif_info* %276, i32 0, i32 4
  %278 = call i32 @list_del_rcu(i32* %277)
  %279 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %280 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %279, i32 0, i32 1
  %281 = call i32 @mutex_unlock(i32* %280)
  %282 = call i32 (...) @synchronize_rcu()
  br label %299

283:                                              ; preds = %253, %250
  %284 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %285 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp sgt i32 %286, 1
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load i32, i32* @PS_OFF_VIF, align 4
  %290 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %291 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 8
  br label %295

295:                                              ; preds = %288, %283
  %296 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %297 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %296, i32 0, i32 1
  %298 = call i32 @mutex_unlock(i32* %297)
  br label %299

299:                                              ; preds = %295, %256
  %300 = load i32, i32* %10, align 4
  ret i32 %300
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @bitmap_find_free_region(i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @carl9170_mod_virtual_mac(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_init_interface(%struct.ar9170*, %struct.ieee80211_vif*) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i64, i32) #1

declare dso_local i32 @bitmap_release_region(i32*, i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
