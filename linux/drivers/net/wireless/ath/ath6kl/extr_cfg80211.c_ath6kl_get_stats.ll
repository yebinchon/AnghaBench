; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ath6kl_vif = type { %struct.target_stats, %struct.ath6kl* }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ath6kl = type { i32 }

@ATH6KL_STATS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ethtool stats error, i: %d  STATS_LEN: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i64*)* @ath6kl_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ath6kl_vif*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.target_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ath6kl_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.ath6kl_vif* %12, %struct.ath6kl_vif** %7, align 8
  %13 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %14 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %13, i32 0, i32 1
  %15 = load %struct.ath6kl*, %struct.ath6kl** %14, align 8
  store %struct.ath6kl* %15, %struct.ath6kl** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* @ATH6KL_STATS_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i64* %16, i32 0, i32 %20)
  %22 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %23 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %24 = call i32 @ath6kl_read_tgt_stats(%struct.ath6kl* %22, %struct.ath6kl_vif* %23)
  %25 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %26 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %25, i32 0, i32 0
  store %struct.target_stats* %26, %struct.target_stats** %10, align 8
  %27 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %28 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %27, i32 0, i32 32
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %31 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %30, i32 0, i32 31
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %40 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %39, i32 0, i32 30
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %43 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %42, i32 0, i32 29
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  %51 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %52 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %51, i32 0, i32 21
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %55 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %54, i32 0, i32 19
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i64*, i64** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 %57, i64* %62, align 8
  %63 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %64 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %63, i32 0, i32 18
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %67 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %66, i32 0, i32 17
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64*, i64** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 %69, i64* %74, align 8
  %75 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %76 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %75, i32 0, i32 32
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  store i64 %77, i64* %82, align 8
  %83 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %84 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %83, i32 0, i32 31
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  store i64 %85, i64* %90, align 8
  %91 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %92 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %91, i32 0, i32 30
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64 %93, i64* %98, align 8
  %99 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %100 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %99, i32 0, i32 29
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  store i64 %101, i64* %106, align 8
  %107 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %108 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %107, i32 0, i32 28
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64 %109, i64* %114, align 8
  %115 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %116 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %115, i32 0, i32 27
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i64, i64* %118, i64 %121
  store i64 %117, i64* %122, align 8
  %123 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %124 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %123, i32 0, i32 26
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  store i64 %125, i64* %130, align 8
  %131 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %132 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %131, i32 0, i32 25
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %133, i64* %138, align 8
  %139 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %140 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %139, i32 0, i32 24
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  store i64 %141, i64* %146, align 8
  %147 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %148 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %147, i32 0, i32 23
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %149, i64* %154, align 8
  %155 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %156 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %155, i32 0, i32 22
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  store i64 %157, i64* %162, align 8
  %163 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %164 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %163, i32 0, i32 21
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  store i64 %165, i64* %170, align 8
  %171 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %172 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %171, i32 0, i32 20
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %6, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  store i64 %173, i64* %178, align 8
  %179 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %180 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %179, i32 0, i32 19
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %6, align 8
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i64, i64* %182, i64 %185
  store i64 %181, i64* %186, align 8
  %187 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %188 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %187, i32 0, i32 18
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  store i64 %189, i64* %194, align 8
  %195 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %196 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %195, i32 0, i32 17
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %6, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  store i64 %197, i64* %202, align 8
  %203 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %204 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %203, i32 0, i32 16
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** %6, align 8
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i64, i64* %206, i64 %209
  store i64 %205, i64* %210, align 8
  %211 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %212 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %211, i32 0, i32 15
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** %6, align 8
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i64, i64* %214, i64 %217
  store i64 %213, i64* %218, align 8
  %219 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %220 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %219, i32 0, i32 14
  %221 = load i64, i64* %220, align 8
  %222 = load i64*, i64** %6, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i64, i64* %222, i64 %225
  store i64 %221, i64* %226, align 8
  %227 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %228 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %227, i32 0, i32 13
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %6, align 8
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i64, i64* %230, i64 %233
  store i64 %229, i64* %234, align 8
  %235 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %236 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %235, i32 0, i32 12
  %237 = load i64, i64* %236, align 8
  %238 = load i64*, i64** %6, align 8
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  store i64 %237, i64* %242, align 8
  %243 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %244 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %243, i32 0, i32 11
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %6, align 8
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %9, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i64, i64* %246, i64 %249
  store i64 %245, i64* %250, align 8
  %251 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %252 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %251, i32 0, i32 10
  %253 = load i64, i64* %252, align 8
  %254 = load i64*, i64** %6, align 8
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %9, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  store i64 %253, i64* %258, align 8
  %259 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %260 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %259, i32 0, i32 9
  %261 = load i64, i64* %260, align 8
  %262 = load i64*, i64** %6, align 8
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %9, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  store i64 %261, i64* %266, align 8
  %267 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %268 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %267, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = load i64*, i64** %6, align 8
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %9, align 4
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i64, i64* %270, i64 %273
  store i64 %269, i64* %274, align 8
  %275 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %276 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = load i64*, i64** %6, align 8
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i64, i64* %278, i64 %281
  store i64 %277, i64* %282, align 8
  %283 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %284 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = load i64*, i64** %6, align 8
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i64, i64* %286, i64 %289
  store i64 %285, i64* %290, align 8
  %291 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %292 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = load i64*, i64** %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i64, i64* %294, i64 %297
  store i64 %293, i64* %298, align 8
  %299 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %300 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load i64*, i64** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i64, i64* %302, i64 %305
  store i64 %301, i64* %306, align 8
  %307 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %308 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64*, i64** %6, align 8
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i64, i64* %310, i64 %313
  store i64 %309, i64* %314, align 8
  %315 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %316 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %6, align 8
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %9, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i64, i64* %318, i64 %321
  store i64 %317, i64* %322, align 8
  %323 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %324 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64*, i64** %6, align 8
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i64, i64* %326, i64 %329
  store i64 %325, i64* %330, align 8
  %331 = load %struct.target_stats*, %struct.target_stats** %10, align 8
  %332 = getelementptr inbounds %struct.target_stats, %struct.target_stats* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64*, i64** %6, align 8
  %335 = load i32, i32* %9, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %9, align 4
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i64, i64* %334, i64 %337
  store i64 %333, i64* %338, align 8
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @ATH6KL_STATS_LEN, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %3
  %343 = call i32 @WARN_ON_ONCE(i32 1)
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* @ATH6KL_STATS_LEN, align 4
  %346 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %342, %3
  ret void
}

declare dso_local %struct.ath6kl_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath6kl_read_tgt_stats(%struct.ath6kl*, %struct.ath6kl_vif*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
