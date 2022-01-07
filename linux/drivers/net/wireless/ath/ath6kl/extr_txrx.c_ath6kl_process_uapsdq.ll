; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_process_uapsdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_process_uapsdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sta = type { i32, i32, i32, i32, i32 }
%struct.ath6kl_vif = type { i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }
%struct.ath6kl_llc_snap_hdr = type { i32 }

@STA_PS_APSD_TRIGGER = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_MORE = common dso_local global i32 0, align 4
@STA_PS_APSD_EOSP = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_EOSP = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_UAPSD = common dso_local global i32 0, align 4
@WMM_ENABLED = common dso_local global i32 0, align 4
@IP_ETHERTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_sta*, %struct.ath6kl_vif*, %struct.sk_buff*, i32*)* @ath6kl_process_uapsdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_process_uapsdq(%struct.ath6kl_sta* %0, %struct.ath6kl_vif* %1, %struct.sk_buff* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl_sta*, align 8
  %7 = alloca %struct.ath6kl_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ath6kl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ath6kl_llc_snap_hdr*, align 8
  store %struct.ath6kl_sta* %0, %struct.ath6kl_sta** %6, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 2
  %20 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  store %struct.ath6kl* %20, %struct.ath6kl** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ethhdr*
  store %struct.ethhdr* %24, %struct.ethhdr** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %26 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STA_PS_APSD_TRIGGER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %4
  %32 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %33 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %32, i32 0, i32 3
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %36 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %35, i32 0, i32 4
  %37 = call i32 @skb_queue_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @WMI_DATA_HDR_FLAGS_MORE, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %57

44:                                               ; preds = %31
  %45 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STA_PS_APSD_EOSP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @WMI_DATA_HDR_FLAGS_EOSP, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* @WMI_DATA_HDR_FLAGS_UAPSD, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %63 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %62, i32 0, i32 3
  %64 = call i32 @spin_unlock_bh(i32* %63)
  store i32 0, i32* %5, align 4
  br label %152

65:                                               ; preds = %4
  %66 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %67 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %152

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* @WMM_ENABLED, align 4
  %74 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %75 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %72
  %79 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %80 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @be16_to_cpu(i32 %81)
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i64 @is_ethertype(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %88 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %87, i64 1
  %89 = bitcast %struct.ethhdr* %88 to i32*
  store i32* %89, i32** %15, align 8
  br label %101

90:                                               ; preds = %78
  %91 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %92 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %91, i64 1
  %93 = bitcast %struct.ethhdr* %92 to %struct.ath6kl_llc_snap_hdr*
  store %struct.ath6kl_llc_snap_hdr* %93, %struct.ath6kl_llc_snap_hdr** %17, align 8
  %94 = load %struct.ath6kl_llc_snap_hdr*, %struct.ath6kl_llc_snap_hdr** %17, align 8
  %95 = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, %struct.ath6kl_llc_snap_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @be16_to_cpu(i32 %96)
  store i64 %97, i64* %16, align 8
  %98 = load %struct.ath6kl_llc_snap_hdr*, %struct.ath6kl_llc_snap_hdr** %17, align 8
  %99 = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, %struct.ath6kl_llc_snap_hdr* %98, i64 1
  %100 = bitcast %struct.ath6kl_llc_snap_hdr* %99 to i32*
  store i32* %100, i32** %15, align 8
  br label %101

101:                                              ; preds = %90, %86
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* @IP_ETHERTYPE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @ath6kl_wmi_determine_user_priority(i32* %106, i32 0)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %72
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @ath6kl_wmi_get_traffic_class(i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %113 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = shl i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %152

120:                                              ; preds = %109
  %121 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %122 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %121, i32 0, i32 3
  %123 = call i32 @spin_lock_bh(i32* %122)
  %124 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %125 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %124, i32 0, i32 4
  %126 = call i32 @skb_queue_empty(i32* %125)
  store i32 %126, i32* %11, align 4
  %127 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %128 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %127, i32 0, i32 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = call i32 @skb_queue_tail(i32* %128, %struct.sk_buff* %129)
  %131 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %132 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock_bh(i32* %132)
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %120
  %137 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %138 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %141 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %144 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ath6kl_wmi_set_apsd_bfrd_traf(i32 %139, i32 %142, i32 %145, i32 1, i32 0)
  br label %147

147:                                              ; preds = %136, %120
  %148 = load i32, i32* @WMI_DATA_HDR_FLAGS_UAPSD, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %147, %119, %70, %57
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @is_ethertype(i64) #1

declare dso_local i32 @ath6kl_wmi_determine_user_priority(i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_get_traffic_class(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ath6kl_wmi_set_apsd_bfrd_traf(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
