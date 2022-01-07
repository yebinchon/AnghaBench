; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i64, i32, i32, %struct.TYPE_2__**, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl_vif = type { %struct.cfg80211_scan_request*, i32, i32, i32 }
%struct.ath6kl = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CLEAR_BSSFILTER_ON_BEACON = common dso_local global i32 0, align 4
@ALL_BSS_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"couldn't set bss filtering\0A\00", align 1
@WMI_FRAME_PROBE_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to set Probe Request appie for scan\0A\00", align 1
@WMI_MAX_CHANNELS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to set scan channels, scan all channels\00", align 1
@CONNECTED = common dso_local global i32 0, align 4
@WMI_LONG_SCAN = common dso_local global i32 0, align 4
@ATH6KL_FG_SCAN_INTERVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to start scan: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @ath6kl_cfg80211_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_cfg80211_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.ath6kl_vif*, align 8
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %13 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ath6kl_vif* @ath6kl_vif_from_wdev(i32 %15)
  store %struct.ath6kl_vif* %16, %struct.ath6kl_vif** %6, align 8
  %17 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %18 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ath6kl* @ath6kl_priv(i32 %19)
  store %struct.ath6kl* %20, %struct.ath6kl** %7, align 8
  store i64 0, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %22 = call i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %170

27:                                               ; preds = %2
  %28 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %29 = call i32 @ath6kl_cfg80211_sscan_disable(%struct.ath6kl_vif* %28)
  %30 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @CLEAR_BSSFILTER_ON_BEACON, align 4
  %36 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %36, i32 0, i32 2
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %40 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %43 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ALL_BSS_FILTER, align 4
  %46 = call i32 @ath6kl_wmi_bssfilter_cmd(i32 %41, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %170

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %55 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %56 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %57 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ath6kl_set_probed_ssids(%struct.ath6kl* %54, %struct.ath6kl_vif* %55, i32 %58, i32 %61, i32* null, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %170

67:                                               ; preds = %53
  %68 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %69 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %72 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WMI_FRAME_PROBE_REQ, align 4
  %75 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %79 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ath6kl_wmi_set_appie_cmd(i32 %70, i32 %73, i32 %74, i32 %77, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %170

87:                                               ; preds = %67
  %88 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %89 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %87
  %93 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %94 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WMI_MAX_CHANNELS, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %92
  %99 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %100 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @kcalloc(i64 %102, i32 4, i32 %103)
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %109

109:                                              ; preds = %107, %98
  store i64 0, i64* %12, align 8
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %116 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %115, i32 0, i32 3
  %117 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %117, i64 %118
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %114
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  br label %110

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129, %92, %87
  %131 = load i32, i32* @CONNECTED, align 4
  %132 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %133 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %132, i32 0, i32 2
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %130
  %138 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %139 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %140 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %139, i32 0, i32 0
  store %struct.cfg80211_scan_request* %138, %struct.cfg80211_scan_request** %140, align 8
  %141 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %142 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %145 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WMI_LONG_SCAN, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @ATH6KL_FG_SCAN_INTERVAL, align 4
  %150 = load i64, i64* %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %153 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %156 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ath6kl_wmi_beginscan_cmd(i32 %143, i32 %146, i32 %147, i32 %148, i32 0, i32 0, i32 %149, i64 %150, i32* %151, i32 %154, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %137
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %6, align 8
  %165 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %164, i32 0, i32 0
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %165, align 8
  br label %166

166:                                              ; preds = %161, %137
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @kfree(i32* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %84, %65, %49, %24
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.ath6kl_vif* @ath6kl_vif_from_wdev(i32) #1

declare dso_local %struct.ath6kl* @ath6kl_priv(i32) #1

declare dso_local i32 @ath6kl_cfg80211_ready(%struct.ath6kl_vif*) #1

declare dso_local i32 @ath6kl_cfg80211_sscan_disable(%struct.ath6kl_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @ath6kl_set_probed_ssids(%struct.ath6kl*, %struct.ath6kl_vif*, i32, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_set_appie_cmd(i32, i32, i32, i32, i32) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_beginscan_cmd(i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
