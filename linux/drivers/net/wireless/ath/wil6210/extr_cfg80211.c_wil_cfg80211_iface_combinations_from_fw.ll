; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_iface_combinations_from_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_iface_combinations_from_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_fw_record_concurrency = type { i32, %struct.wil_fw_concurrency_combo*, i32 }
%struct.wil_fw_concurrency_combo = type { i32, %struct.wil_fw_concurrency_limit*, i32, i32, i32 }
%struct.wil_fw_concurrency_limit = type { i32, i32 }
%struct.wiphy = type { i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { i32, %struct.ieee80211_iface_limit*, i32, i32, i32 }
%struct.ieee80211_iface_limit = type { i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"iface_combinations already set, skipping\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"iface_combination %d: max_if %d, num_ch %d, bi_match %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"limit %d: max %d types 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"multiple VIFs supported, n_mids %d\0A\00", align 1
@WIL_MAX_VIFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"limited number of VIFs supported(%d, FW %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_cfg80211_iface_combinations_from_fw(%struct.wil6210_priv* %0, %struct.wil_fw_record_concurrency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wil_fw_record_concurrency*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wil_fw_concurrency_combo*, align 8
  %10 = alloca %struct.wil_fw_concurrency_limit*, align 8
  %11 = alloca %struct.ieee80211_iface_combination*, align 8
  %12 = alloca %struct.ieee80211_iface_limit*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.wil_fw_record_concurrency* %1, %struct.wil_fw_record_concurrency** %5, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %16 = call %struct.wiphy* @wil_to_wiphy(%struct.wil6210_priv* %15)
  store %struct.wiphy* %16, %struct.wiphy** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %18, align 8
  %20 = icmp ne %struct.ieee80211_iface_combination* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %23 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %249

24:                                               ; preds = %2
  %25 = load %struct.wil_fw_record_concurrency*, %struct.wil_fw_record_concurrency** %5, align 8
  %26 = getelementptr inbounds %struct.wil_fw_record_concurrency, %struct.wil_fw_record_concurrency* %25, i32 0, i32 1
  %27 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %26, align 8
  store %struct.wil_fw_concurrency_combo* %27, %struct.wil_fw_concurrency_combo** %9, align 8
  %28 = load %struct.wil_fw_record_concurrency*, %struct.wil_fw_record_concurrency** %5, align 8
  %29 = getelementptr inbounds %struct.wil_fw_record_concurrency, %struct.wil_fw_record_concurrency* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @le16_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %53, %24
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %39 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %44 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %43, i32 0, i32 1
  %45 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %44, align 8
  %46 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %47 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %45, i64 %49
  store %struct.wil_fw_concurrency_limit* %50, %struct.wil_fw_concurrency_limit** %10, align 8
  %51 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %10, align 8
  %52 = bitcast %struct.wil_fw_concurrency_limit* %51 to %struct.wil_fw_concurrency_combo*
  store %struct.wil_fw_concurrency_combo* %52, %struct.wil_fw_concurrency_combo** %9, align 8
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 32
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 16
  %63 = add i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.ieee80211_iface_combination* @kzalloc(i32 %64, i32 %65)
  store %struct.ieee80211_iface_combination* %66, %struct.ieee80211_iface_combination** %11, align 8
  %67 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %68 = icmp ne %struct.ieee80211_iface_combination* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %249

72:                                               ; preds = %56
  %73 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %73, i64 %75
  %77 = bitcast %struct.ieee80211_iface_combination* %76 to %struct.ieee80211_iface_limit*
  store %struct.ieee80211_iface_limit* %77, %struct.ieee80211_iface_limit** %12, align 8
  %78 = load %struct.wil_fw_record_concurrency*, %struct.wil_fw_record_concurrency** %5, align 8
  %79 = getelementptr inbounds %struct.wil_fw_record_concurrency, %struct.wil_fw_record_concurrency* %78, i32 0, i32 1
  %80 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %79, align 8
  store %struct.wil_fw_concurrency_combo* %80, %struct.wil_fw_concurrency_combo** %9, align 8
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %212, %72
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %215

85:                                               ; preds = %81
  %86 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %87 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %89, i64 %91
  %93 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %92, i32 0, i32 4
  store i32 %88, i32* %93, align 8
  %94 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %95 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %97, i64 %99
  %101 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %100, i32 0, i32 3
  store i32 %96, i32* %101, align 4
  %102 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %103 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %105, i64 %107
  %109 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %108, i32 0, i32 2
  store i32 %104, i32* %109, align 8
  %110 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %111 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %113, i64 %115
  %117 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %120, i64 %122
  %124 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %126, i64 %128
  %130 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %132, i64 %134
  %136 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %125, i32 %131, i32 %137)
  %139 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %140 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %139, i32 0, i32 1
  %141 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %140, align 8
  store %struct.wil_fw_concurrency_limit* %141, %struct.wil_fw_concurrency_limit** %10, align 8
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %188, %85
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %145 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %191

148:                                              ; preds = %142
  %149 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %10, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %149, i64 %151
  %153 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %156, i64 %158
  %160 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %159, i32 0, i32 1
  store i8* %155, i8** %160, align 8
  %161 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %161, i64 %163
  %165 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %168, i64 %170
  %172 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %171, i32 0, i32 0
  store i8* %167, i8** %172, align 8
  %173 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %175, i64 %177
  %179 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %181, i64 %183
  %185 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %174, i8* %180, i8* %186)
  br label %188

188:                                              ; preds = %148
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %142

191:                                              ; preds = %142
  %192 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %193 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %193, i64 %195
  %197 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %196, i32 0, i32 1
  store %struct.ieee80211_iface_limit* %192, %struct.ieee80211_iface_limit** %197, align 8
  %198 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %199 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ieee80211_iface_limit*, %struct.ieee80211_iface_limit** %12, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds %struct.ieee80211_iface_limit, %struct.ieee80211_iface_limit* %201, i64 %202
  store %struct.ieee80211_iface_limit* %203, %struct.ieee80211_iface_limit** %12, align 8
  %204 = load %struct.wil_fw_concurrency_combo*, %struct.wil_fw_concurrency_combo** %9, align 8
  %205 = getelementptr inbounds %struct.wil_fw_concurrency_combo, %struct.wil_fw_concurrency_combo* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds %struct.wil_fw_concurrency_limit, %struct.wil_fw_concurrency_limit* %207, i64 %208
  store %struct.wil_fw_concurrency_limit* %209, %struct.wil_fw_concurrency_limit** %10, align 8
  %210 = load %struct.wil_fw_concurrency_limit*, %struct.wil_fw_concurrency_limit** %10, align 8
  %211 = bitcast %struct.wil_fw_concurrency_limit* %210 to %struct.wil_fw_concurrency_combo*
  store %struct.wil_fw_concurrency_combo* %211, %struct.wil_fw_concurrency_combo** %9, align 8
  br label %212

212:                                              ; preds = %191
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %81

215:                                              ; preds = %81
  %216 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %217 = load %struct.wil_fw_record_concurrency*, %struct.wil_fw_record_concurrency** %5, align 8
  %218 = getelementptr inbounds %struct.wil_fw_record_concurrency, %struct.wil_fw_record_concurrency* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %216, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  %221 = load %struct.wil_fw_record_concurrency*, %struct.wil_fw_record_concurrency** %5, align 8
  %222 = getelementptr inbounds %struct.wil_fw_record_concurrency, %struct.wil_fw_record_concurrency* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  %225 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %226 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %228 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @WIL_MAX_VIFS, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %215
  %233 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %234 = load i32, i32* @WIL_MAX_VIFS, align 4
  %235 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %236 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @wil_info(%struct.wil6210_priv* %233, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %234, i32 %237)
  %239 = load i32, i32* @WIL_MAX_VIFS, align 4
  %240 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %241 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %232, %215
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %245 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %11, align 8
  %247 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %248 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %247, i32 0, i32 1
  store %struct.ieee80211_iface_combination* %246, %struct.ieee80211_iface_combination** %248, align 8
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %242, %69, %21
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.wiphy* @wil_to_wiphy(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local %struct.ieee80211_iface_combination* @kzalloc(i32, i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
