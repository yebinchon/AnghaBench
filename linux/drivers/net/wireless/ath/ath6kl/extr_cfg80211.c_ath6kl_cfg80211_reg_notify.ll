; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_reg_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_cfg80211_reg_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.regulatory_request = type { i64, i32*, i32, i64, i64 }
%struct.ath6kl = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cfg reg_notify %c%c%s%s initiator %d hint_type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" intersect\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" processed\00", align 1
@NL80211_USER_REG_HINT_CELL_BASE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to set regdomain: %d\0A\00", align 1
@WMI_LONG_SCAN = common dso_local global i32 0, align 4
@ATH6KL_FG_SCAN_INTERVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"failed to start scan for a regdomain change: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @ath6kl_cfg80211_reg_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_cfg80211_reg_notify(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %12 = call %struct.ath6kl* @wiphy_priv(%struct.wiphy* %11)
  store %struct.ath6kl* %12, %struct.ath6kl** %5, align 8
  %13 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %18 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %19 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %29 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %35 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %41 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %44 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ath6kl_dbg(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i8* %33, i8* %39, i32 %42, i64 %45)
  %47 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %48 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_USER_REG_HINT_CELL_BASE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %112

53:                                               ; preds = %2
  %54 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %58 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ath6kl_wmi_set_regdomain_cmd(i32 %56, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  store i32 1, i32* %10, align 4
  br label %112

66:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %82 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %16, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %80, %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %101 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @WMI_LONG_SCAN, align 4
  %104 = load i32, i32* @ATH6KL_FG_SCAN_INTERVAL, align 4
  %105 = call i32 @ath6kl_wmi_beginscan_cmd(i32 %102, i32 0, i32 %103, i32 0, i32 0, i32 0, i32 %104, i32 0, i32* null, i32 0, i32* %16)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @ath6kl_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  store i32 1, i32* %10, align 4
  br label %112

111:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %111, %108, %63, %52
  %113 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %10, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

declare dso_local %struct.ath6kl* @wiphy_priv(%struct.wiphy*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @ath6kl_wmi_set_regdomain_cmd(i32, i32*) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @ath6kl_wmi_beginscan_cmd(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
