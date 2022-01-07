; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_mgmt_tx_params = type { i64, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"mgmt_tx: channel %d offchan %d, wait %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"send WMI_SW_TX_REQ_CMDID on non-AP interfaces\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"send WMI_SW_TX_REQ_CMDID for on-channel\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"invalid channel params: current %d requested %d, off-channel not allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_cfg80211_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wil6210_priv*, align 8
  %13 = alloca %struct.wil6210_vif*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %17 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %20 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %23 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %22)
  store %struct.wil6210_priv* %23, %struct.wil6210_priv** %12, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %26 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %24, %struct.wireless_dev* %25)
  store %struct.wil6210_vif* %26, %struct.wil6210_vif** %13, align 8
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %28 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %29 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %34 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %37, %32 ], [ -1, %38 ]
  %41 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %42 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %45 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %49 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %39
  %53 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %54 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %61 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %160

64:                                               ; preds = %52, %39
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %72 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.wil6210_vif*, %struct.wil6210_vif** %13, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @wmi_mgmt_tx(%struct.wil6210_vif* %73, i32* %74, i64 %75)
  store i32 %76, i32* %14, align 4
  br label %132

77:                                               ; preds = %64
  %78 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %79 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = icmp ne %struct.TYPE_2__* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %84 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.wil6210_vif*, %struct.wil6210_vif** %13, align 8
  %90 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %82, %77
  %94 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %95 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.wil6210_vif*, %struct.wil6210_vif** %13, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @wmi_mgmt_tx(%struct.wil6210_vif* %96, i32* %97, i64 %98)
  store i32 %99, i32* %14, align 4
  br label %132

100:                                              ; preds = %82
  %101 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %102 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %107 = load %struct.wil6210_vif*, %struct.wil6210_vif** %13, align 8
  %108 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %111 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i64 %109, i32 %114)
  %116 = load i32, i32* @EBUSY, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %160

118:                                              ; preds = %100
  %119 = load %struct.wil6210_vif*, %struct.wil6210_vif** %13, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %123 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %129 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @wmi_mgmt_tx_ext(%struct.wil6210_vif* %119, i32* %120, i64 %121, i64 %127, i32 %130)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %118, %93, %70
  %133 = load i32, i32* %14, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %14, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ 0, %140 ], [ %142, %141 ]
  store i32 %144, i32* %14, align 4
  %145 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  br label %152

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %148
  %153 = phi i32 [ %150, %148 ], [ 0, %151 ]
  %154 = load i32*, i32** %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i32 @cfg80211_mgmt_tx_status(%struct.wireless_dev* %145, i32 %153, i32* %154, i64 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %152, %105, %59
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wmi_mgmt_tx(%struct.wil6210_vif*, i32*, i64) #1

declare dso_local i32 @wmi_mgmt_tx_ext(%struct.wil6210_vif*, i32*, i64, i64, i32) #1

declare dso_local i32 @cfg80211_mgmt_tx_status(%struct.wireless_dev*, i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
