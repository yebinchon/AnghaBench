; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_internal_escan_add_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_internal_escan_add_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_request = type { i32, i32, %struct.TYPE_2__*, %struct.ieee80211_channel**, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211_channel = type { i32 }

@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_scan_request*, i64*, i64, i64)* @brcmf_internal_escan_add_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_internal_escan_add_info(%struct.cfg80211_scan_request* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_scan_request*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cfg80211_scan_request* %0, %struct.cfg80211_scan_request** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %18, i32* %11, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ieee80211_channel_to_frequency(i64 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %148

30:                                               ; preds = %21
  %31 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %33, i32 %34)
  store %struct.ieee80211_channel* %35, %struct.ieee80211_channel** %10, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %37 = icmp ne %struct.ieee80211_channel* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %148

41:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %50 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %49, i32 0, i32 3
  %51 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %51, i64 %53
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %54, align 8
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %57 = icmp eq %struct.ieee80211_channel* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %42

63:                                               ; preds = %58, %42
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %66 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %71 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %72 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %71, i32 0, i32 3
  %73 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %72, align 8
  %74 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %75 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %73, i64 %78
  store %struct.ieee80211_channel* %70, %struct.ieee80211_channel** %79, align 8
  br label %80

80:                                               ; preds = %69, %63
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %113, %80
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %84 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %81
  %88 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %89 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %87
  %99 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %100 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @memcmp(i32 %106, i64* %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %116

112:                                              ; preds = %98, %87
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %81

116:                                              ; preds = %111, %81
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %119 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %124 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %127 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @memcpy(i32 %132, i64* %133, i64 %134)
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %138 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %6, align 8
  %141 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %136, i64* %146, align 8
  br label %147

147:                                              ; preds = %122, %116
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %38, %27
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i32 @memcmp(i32, i64*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
