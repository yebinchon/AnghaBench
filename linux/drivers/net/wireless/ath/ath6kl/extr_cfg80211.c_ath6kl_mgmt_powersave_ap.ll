; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_mgmt_powersave_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_mgmt_powersave_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ath6kl_sta = type { i32, i64, i32, i32, i32, i32 }
%struct.ath6kl_mgmt_buff = type { i64, i32, i32, i32, i8*, i8*, i8* }

@STA_PS_SLEEP = common dso_local global i32 0, align 4
@STA_PS_POLLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i8*, i8*, i8*, i32*, i64, i32*, i32)* @ath6kl_mgmt_powersave_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_mgmt_powersave_ap(%struct.ath6kl_vif* %0, i8* %1, i8* %2, i8* %3, i32* %4, i64 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath6kl_vif*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_mgmt*, align 8
  %19 = alloca %struct.ath6kl_sta*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ath6kl_mgmt_buff*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %25 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %24, i32 0, i32 1
  %26 = load %struct.ath6kl*, %struct.ath6kl** %25, align 8
  store %struct.ath6kl* %26, %struct.ath6kl** %23, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = bitcast i32* %27 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %28, %struct.ieee80211_mgmt** %18, align 8
  %29 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @is_multicast_ether_addr(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %153

35:                                               ; preds = %8
  %36 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %37 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %18, align 8
  %38 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ath6kl_sta* @ath6kl_find_sta(%struct.ath6kl_vif* %36, i32 %39)
  store %struct.ath6kl_sta* %40, %struct.ath6kl_sta** %19, align 8
  %41 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %42 = icmp ne %struct.ath6kl_sta* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %153

44:                                               ; preds = %35
  %45 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STA_PS_SLEEP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %152

51:                                               ; preds = %44
  %52 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %53 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @STA_PS_POLLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %133, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, 48
  store i64 %60, i64* %22, align 8
  %61 = load i64, i64* %22, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.ath6kl_mgmt_buff* @kmalloc(i64 %61, i32 %62)
  store %struct.ath6kl_mgmt_buff* %63, %struct.ath6kl_mgmt_buff** %21, align 8
  %64 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %65 = icmp ne %struct.ath6kl_mgmt_buff* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %153

67:                                               ; preds = %58
  %68 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %69 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %73 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %76 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %79 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %82 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %85 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %87 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @memcpy(i32 %88, i32* %89, i64 %90)
  %92 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %93 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %92, i32 0, i32 2
  %94 = call i32 @spin_lock_bh(i32* %93)
  %95 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %96 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %95, i32 0, i32 3
  %97 = call i64 @skb_queue_empty(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %67
  %100 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %101 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br label %104

104:                                              ; preds = %99, %67
  %105 = phi i1 [ false, %67 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %20, align 4
  %107 = load %struct.ath6kl_mgmt_buff*, %struct.ath6kl_mgmt_buff** %21, align 8
  %108 = getelementptr inbounds %struct.ath6kl_mgmt_buff, %struct.ath6kl_mgmt_buff* %107, i32 0, i32 2
  %109 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %110 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %109, i32 0, i32 5
  %111 = call i32 @list_add_tail(i32* %108, i32* %110)
  %112 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %113 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %117 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %116, i32 0, i32 2
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %104
  %122 = load %struct.ath6kl*, %struct.ath6kl** %23, align 8
  %123 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %126 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %129 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ath6kl_wmi_set_pvb_cmd(i32 %124, i32 %127, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %121, %104
  store i32 1, i32* %9, align 4
  br label %153

133:                                              ; preds = %51
  %134 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %135 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %134, i32 0, i32 2
  %136 = call i32 @spin_lock_bh(i32* %135)
  %137 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %138 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %137, i32 0, i32 3
  %139 = call i64 @skb_queue_empty(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %143 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141, %133
  %147 = load i32*, i32** %16, align 8
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %141
  %149 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %19, align 8
  %150 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %149, i32 0, i32 2
  %151 = call i32 @spin_unlock_bh(i32* %150)
  br label %152

152:                                              ; preds = %148, %44
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %152, %132, %66, %43, %34
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.ath6kl_sta* @ath6kl_find_sta(%struct.ath6kl_vif*, i32) #1

declare dso_local %struct.ath6kl_mgmt_buff* @kmalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
