; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_prep_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_prep_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.iwl_station_entry* }
%struct.iwl_station_entry = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iwl_rxon_context = type { i64, i64, i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@IWL_STA_ID = common dso_local global i32 0, align 4
@IWLAGN_STATION_COUNT = common dso_local global i32 0, align 4
@IWL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"STA %d already in process of being added.\0A\00", align 1
@IWL_STA_DRIVER_ACTIVE = common dso_local global i32 0, align 4
@IWL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"STA %d (%pM) already added, not adding again.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Add STA to driver ID %d: %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iwl_prep_station(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i64* %2, i32 %3, %struct.ieee80211_sta* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.iwl_station_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.iwl_station_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %11, align 8
  %16 = load i64, i64* @IWL_INVALID_STATION, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  br label %77

23:                                               ; preds = %5
  %24 = load i64*, i64** %9, align 8
  %25 = call i64 @is_broadcast_ether_addr(i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  br label %76

31:                                               ; preds = %23
  %32 = load i32, i32* @IWL_STA_ID, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %72, %31
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @IWLAGN_STATION_COUNT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i64 @ether_addr_equal(i32 %47, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %14, align 8
  br label %75

54:                                               ; preds = %37
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 1
  %57 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %57, i64 %59
  %61 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* @IWL_INVALID_STATION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %68, %64, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %33

75:                                               ; preds = %51, %33
  br label %76

76:                                               ; preds = %75, %27
  br label %77

77:                                               ; preds = %76, %19
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @IWL_INVALID_STATION, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %6, align 8
  br label %208

86:                                               ; preds = %77
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %88 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %87, i32 0, i32 1
  %89 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %89, i64 %90
  %92 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %14, align 8
  store i64 %101, i64* %6, align 8
  br label %208

102:                                              ; preds = %86
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 1
  %105 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %105, i64 %106
  %108 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %102
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %115 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %114, i32 0, i32 1
  %116 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %116, i64 %117
  %119 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IWL_STA_UCODE_ACTIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %113
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %126 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %125, i32 0, i32 1
  %127 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %127, i64 %128
  %130 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = call i64 @ether_addr_equal(i32 %133, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %124
  %138 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i64*, i64** %9, align 8
  %141 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %138, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %139, i64* %140)
  %142 = load i64, i64* %14, align 8
  store i64 %142, i64* %6, align 8
  br label %208

143:                                              ; preds = %124, %113, %102
  %144 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %145 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %144, i32 0, i32 1
  %146 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %145, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %146, i64 %147
  store %struct.iwl_station_entry* %148, %struct.iwl_station_entry** %12, align 8
  %149 = load i32, i32* @IWL_STA_DRIVER_ACTIVE, align 4
  %150 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %151 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64*, i64** %9, align 8
  %155 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %153, i64* %154)
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %157 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %161 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %160, i32 0, i32 2
  %162 = call i32 @memset(%struct.TYPE_4__* %161, i32 0, i32 4)
  %163 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %164 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = load i32, i32* @ETH_ALEN, align 4
  %170 = call i32 @memcpy(i32 %167, i64* %168, i32 %169)
  %171 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %172 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %176 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i64 %174, i64* %178, align 8
  %179 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %180 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %183 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %186 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.iwl_station_entry*, %struct.iwl_station_entry** %12, align 8
  %189 = getelementptr inbounds %struct.iwl_station_entry, %struct.iwl_station_entry* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %191 = icmp ne %struct.ieee80211_sta* %190, null
  br i1 %191, label %192, label %201

192:                                              ; preds = %143
  %193 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = bitcast i8* %196 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %197, %struct.iwl_station_priv** %15, align 8
  %198 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %199 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %15, align 8
  %200 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %199, i32 0, i32 0
  store %struct.iwl_rxon_context* %198, %struct.iwl_rxon_context** %200, align 8
  br label %201

201:                                              ; preds = %192, %143
  %202 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %203 = load i64, i64* %14, align 8
  %204 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %205 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %206 = call i32 @iwl_set_ht_add_station(%struct.iwl_priv* %202, i64 %203, %struct.ieee80211_sta* %204, %struct.iwl_rxon_context* %205)
  %207 = load i64, i64* %14, align 8
  store i64 %207, i64* %6, align 8
  br label %208

208:                                              ; preds = %201, %137, %97, %84
  %209 = load i64, i64* %6, align 8
  ret i64 %209
}

declare dso_local i64 @is_broadcast_ether_addr(i64*) #1

declare dso_local i64 @ether_addr_equal(i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i64, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @iwl_set_ht_add_station(%struct.iwl_priv*, i64, %struct.ieee80211_sta*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
