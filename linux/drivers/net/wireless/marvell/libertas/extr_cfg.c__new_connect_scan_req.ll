; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c__new_connect_scan_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c__new_connect_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_request = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wiphy = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.cfg80211_connect_params = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_scan_request* (%struct.wiphy*, %struct.cfg80211_connect_params*)* @_new_connect_scan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_scan_request* @_new_connect_scan_req(%struct.wiphy* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca %struct.cfg80211_scan_request*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %6, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %12 = call i32 @ieee80211_get_num_supported_channels(%struct.wiphy* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 28, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.cfg80211_scan_request* @kzalloc(i32 %17, i32 %18)
  store %struct.cfg80211_scan_request* %19, %struct.cfg80211_scan_request** %6, align 8
  %20 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %21 = icmp ne %struct.cfg80211_scan_request* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %3, align 8
  br label %146

23:                                               ; preds = %2
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = bitcast %struct.TYPE_4__** %29 to i8*
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  %32 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %32, i32 0, i32 2
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %110, %23
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %113

43:                                               ; preds = %39
  %44 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %45 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %110

53:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %106, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %57 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %55, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %54
  %67 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %69, i64 %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %106

85:                                               ; preds = %66
  %86 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %87 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %99 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 %102
  store %struct.TYPE_4__* %97, %struct.TYPE_4__** %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %85, %84
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %54

109:                                              ; preds = %54
  br label %110

110:                                              ; preds = %109, %52
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %39

113:                                              ; preds = %39
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %119 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %121 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %127 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %130 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32 %125, i32 %128, i32 %131)
  %133 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %134 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %137 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 4
  br label %144

141:                                              ; preds = %113
  %142 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %143 = call i32 @kfree(%struct.cfg80211_scan_request* %142)
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %6, align 8
  br label %144

144:                                              ; preds = %141, %116
  %145 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  store %struct.cfg80211_scan_request* %145, %struct.cfg80211_scan_request** %3, align 8
  br label %146

146:                                              ; preds = %144, %22
  %147 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  ret %struct.cfg80211_scan_request* %147
}

declare dso_local i32 @ieee80211_get_num_supported_channels(%struct.wiphy*) #1

declare dso_local %struct.cfg80211_scan_request* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
