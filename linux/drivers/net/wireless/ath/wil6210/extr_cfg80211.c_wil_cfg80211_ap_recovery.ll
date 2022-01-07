; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_ap_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_ap_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil6210_vif** }
%struct.wil6210_vif = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32, i32 }
%struct.key_params = type { i64, i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"AP (vif %d) recovery: privacy %d, bi %d, channel %d, hidden %d, pbss %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SSID \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"vif %d recovery failed (%d)\0A\00", align 1
@IEEE80211_GCMP_PN_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"vif %d recovery add key failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_cfg80211_ap_recovery(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_beacon_data, align 4
  %9 = alloca %struct.key_params, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %11 = call %struct.wiphy* @wil_to_wiphy(%struct.wil6210_priv* %10)
  store %struct.wiphy* %11, %struct.wiphy** %5, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %158, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %161

17:                                               ; preds = %12
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 0
  %20 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %20, i64 %22
  %24 = load %struct.wil6210_vif*, %struct.wil6210_vif** %23, align 8
  store %struct.wil6210_vif* %24, %struct.wil6210_vif** %6, align 8
  %25 = bitcast %struct.cfg80211_beacon_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 24, i1 false)
  %26 = bitcast %struct.key_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %28 = icmp ne %struct.wil6210_vif* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %31 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %17
  br label %158

35:                                               ; preds = %29
  %36 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %37 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %36)
  store %struct.net_device* %37, %struct.net_device** %7, align 8
  %38 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %39 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %43 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %47 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %51 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %55 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %59 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %65 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %68 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %71 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %74 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %77 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @wil_info(%struct.wil6210_priv* %62, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78)
  %80 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %81 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %82 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %85 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 16, i32 1, i32 %83, i64 %86, i32 1)
  %88 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %91 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %94 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %97 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %100 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %103 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %106 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %109 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %112 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_wil_cfg80211_start_ap(%struct.wiphy* %88, %struct.net_device* %89, i32 %92, i64 %95, i32 %98, i32 %101, i32 %104, i32 %107, %struct.cfg80211_beacon_data* %8, i32 %110, i32 %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %35
  %118 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @wil_err(%struct.wil6210_priv* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  br label %158

122:                                              ; preds = %35
  %123 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %124 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %129 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %122
  br label %158

133:                                              ; preds = %127
  %134 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %135 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.key_params, %struct.key_params* %9, i32 0, i32 2
  store i32 %136, i32* %137, align 4
  %138 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %139 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.key_params, %struct.key_params* %9, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* @IEEE80211_GCMP_PN_LEN, align 4
  %143 = getelementptr inbounds %struct.key_params, %struct.key_params* %9, i32 0, i32 1
  store i32 %142, i32* %143, align 8
  %144 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %147 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @wil_cfg80211_add_key(%struct.wiphy* %144, %struct.net_device* %145, i32 %148, i32 0, i32* null, %struct.key_params* %9)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %133
  %153 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @wil_err(%struct.wil6210_priv* %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %133
  br label %158

158:                                              ; preds = %157, %132, %117, %34
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %12

161:                                              ; preds = %12
  ret void
}

declare dso_local %struct.wiphy* @wil_to_wiphy(%struct.wil6210_priv*) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wil_hex_dump_misc(i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @_wil_cfg80211_start_ap(%struct.wiphy*, %struct.net_device*, i32, i64, i32, i32, i32, i32, %struct.cfg80211_beacon_data*, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @wil_cfg80211_add_key(%struct.wiphy*, %struct.net_device*, i32, i32, i32*, %struct.key_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
