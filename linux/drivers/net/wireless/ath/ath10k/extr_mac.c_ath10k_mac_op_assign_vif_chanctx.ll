; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_op_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_vif = type { i64, i32, i64 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k_vif = type { i32, i32, i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac chanctx assign ptr %pK vdev_id %i\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to start vdev %i addr %pM on freq %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to update vdev %i ps: %d\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to up monitor vdev %i: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"failed to set cts protection for vdev %d: %d\0A\00", align 1
@ATH10K_PKTLOG_PEER_STATS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to enable pktlog %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @ath10k_mac_op_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_op_assign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.ath10k_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %8, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %18, %struct.ath10k_vif** %9, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %23 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %24 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %25 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %26 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ath10k_dbg(%struct.ath10k* %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.ieee80211_chanctx_conf* %24, i32 %27)
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %30 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %165

40:                                               ; preds = %3
  %41 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %42 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %42, i32 0, i32 0
  %44 = call i32 @ath10k_vdev_start(%struct.ath10k_vif* %41, %struct.TYPE_6__* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %49 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %50 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %60, i32 %61)
  br label %160

63:                                               ; preds = %40
  %64 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %65 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %67 = call i32 @ath10k_mac_vif_setup_ps(%struct.ath10k_vif* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %72 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %73 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  br label %153

77:                                               ; preds = %63
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %85 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %86 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ath10k_wmi_vdev_up(%struct.ath10k* %84, i32 %87, i32 0, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %96 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %97 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99)
  br label %153

101:                                              ; preds = %83
  %102 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %103 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %77
  %105 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %106 = call i64 @ath10k_mac_can_set_cts_prot(%struct.ath10k_vif* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %110 = call i32 @ath10k_mac_set_cts_prot(%struct.ath10k_vif* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %115 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %116 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %108
  br label %121

121:                                              ; preds = %120, %104
  %122 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %123 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load i32, i32* @ATH10K_PKTLOG_PEER_STATS, align 4
  %133 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %134 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %138 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %139 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ath10k_wmi_pdev_pktlog_enable(%struct.ath10k* %137, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %153

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %125, %121
  %150 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %151 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  store i32 0, i32* %4, align 4
  br label %165

153:                                              ; preds = %144, %94, %70
  %154 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %155 = call i32 @ath10k_vdev_stop(%struct.ath10k_vif* %154)
  %156 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %157 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  %158 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %159 = call i32 @ath10k_mac_vif_setup_ps(%struct.ath10k_vif* %158)
  br label %160

160:                                              ; preds = %153, %47
  %161 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %162 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %149, %34
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, %struct.ieee80211_chanctx_conf*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_vdev_start(%struct.ath10k_vif*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_mac_vif_setup_ps(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_wmi_vdev_up(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @ath10k_mac_can_set_cts_prot(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_mac_set_cts_prot(%struct.ath10k_vif*) #1

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #1

declare dso_local i32 @ath10k_wmi_pdev_pktlog_enable(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_vdev_stop(%struct.ath10k_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
