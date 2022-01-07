; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_cfg80211_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i64, i64, i64, i64 }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@WIPHY_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wiphy*, i32)* @brcmf_cfg80211_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_cfg80211_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_cfg80211_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.brcmf_if*, align 8
  %9 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = call %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy* %10)
  store %struct.brcmf_cfg80211_info* %11, %struct.brcmf_cfg80211_info** %6, align 8
  %12 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %13 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %12)
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %14)
  store %struct.brcmf_if* %15, %struct.brcmf_if** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @check_vif_up(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @EIO, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %3, align 8
  br label %167

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %33 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %31
  %42 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %43 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %51 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @brcmf_set_rts(%struct.net_device* %49, i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %41
  br label %163

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %31, %26
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %67 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %72 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %65
  %76 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %77 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %80 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64 %78, i64* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %85 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @brcmf_set_frag(%struct.net_device* %83, i64 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %75
  br label %163

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %65, %60
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @WIPHY_PARAM_RETRY_LONG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %101 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %106 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %99
  %110 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %111 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i64 %112, i64* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %119 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @brcmf_set_retry(%struct.net_device* %117, i64 %122, i32 1)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %109
  br label %163

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %99, %94
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @WIPHY_PARAM_RETRY_SHORT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %128
  %134 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %135 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %140 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %133
  %144 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %145 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %148 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  store i64 %146, i64* %150, align 8
  %151 = load %struct.net_device*, %struct.net_device** %7, align 8
  %152 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %153 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @brcmf_set_retry(%struct.net_device* %151, i64 %156, i32 0)
  store i64 %157, i64* %9, align 8
  %158 = load i64, i64* %9, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %143
  br label %163

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %133, %128
  br label %163

163:                                              ; preds = %162, %160, %126, %92, %58
  %164 = load i32, i32* @TRACE, align 4
  %165 = call i32 @brcmf_dbg(i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* %3, align 8
  br label %167

167:                                              ; preds = %163, %23
  %168 = load i64, i64* %3, align 8
  ret i64 %168
}

declare dso_local %struct.brcmf_cfg80211_info* @wiphy_to_cfg(%struct.wiphy*) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @check_vif_up(i32) #1

declare dso_local i64 @brcmf_set_rts(%struct.net_device*, i64) #1

declare dso_local i64 @brcmf_set_frag(%struct.net_device*, i64) #1

declare dso_local i64 @brcmf_set_retry(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
