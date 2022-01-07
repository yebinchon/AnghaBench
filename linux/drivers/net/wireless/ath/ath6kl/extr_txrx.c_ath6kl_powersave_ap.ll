; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_powersave_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_powersave_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }
%struct.ath6kl_sta = type { i32 }

@AP_MAX_NUM_STA = common dso_local global i64 0, align 8
@STA_PS_SLEEP = common dso_local global i32 0, align 4
@DTIM_EXPIRED = common dso_local global i32 0, align 4
@MCAST_AID = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_MORE = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, %struct.sk_buff*, i32*)* @ath6kl_powersave_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_powersave_ap(%struct.ath6kl_vif* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.ath6kl_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath6kl*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ethhdr*
  store %struct.ethhdr* %18, %struct.ethhdr** %8, align 8
  store %struct.ath6kl_sta* null, %struct.ath6kl_sta** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %19, i32 0, i32 2
  %21 = load %struct.ath6kl*, %struct.ath6kl** %20, align 8
  store %struct.ath6kl* %21, %struct.ath6kl** %11, align 8
  %22 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_multicast_ether_addr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %102

27:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @AP_MAX_NUM_STA, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STA_PS_SLEEP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %28

48:                                               ; preds = %43, %28
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %48
  %52 = load i32, i32* @DTIM_EXPIRED, align 4
  %53 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %54 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  %58 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %62 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %61, i32 0, i32 1
  %63 = call i32 @skb_queue_empty(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %65 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %64, i32 0, i32 1
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @skb_queue_tail(i32* %65, %struct.sk_buff* %66)
  %68 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %69 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %57
  %74 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %75 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %78 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MCAST_AID, align 4
  %81 = call i32 @ath6kl_wmi_set_pvb_cmd(i32 %76, i32 %79, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %73, %57
  store i32 1, i32* %10, align 4
  br label %100

83:                                               ; preds = %51
  %84 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %85 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %84, i32 0, i32 0
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %88 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %87, i32 0, i32 1
  %89 = call i32 @skb_queue_empty(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @WMI_DATA_HDR_FLAGS_MORE, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %83
  %97 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %98 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %82
  br label %101

101:                                              ; preds = %100, %48
  br label %139

102:                                              ; preds = %3
  %103 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %104 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %105 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.ath6kl_sta* @ath6kl_find_sta(%struct.ath6kl_vif* %103, i32 %106)
  store %struct.ath6kl_sta* %107, %struct.ath6kl_sta** %9, align 8
  %108 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %9, align 8
  %109 = icmp ne %struct.ath6kl_sta* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = call i32 @dev_kfree_skb(%struct.sk_buff* %111)
  store i32 1, i32* %4, align 4
  br label %141

113:                                              ; preds = %102
  %114 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %9, align 8
  %115 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @STA_PS_SLEEP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %9, align 8
  %122 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @ath6kl_process_uapsdq(%struct.ath6kl_sta* %121, %struct.ath6kl_vif* %122, %struct.sk_buff* %123, i32* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WMI_DATA_HDR_FLAGS_UAPSD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %120
  %132 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %9, align 8
  %133 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @ath6kl_process_psq(%struct.ath6kl_sta* %132, %struct.ath6kl_vif* %133, %struct.sk_buff* %134, i32* %135)
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %131, %120
  br label %138

138:                                              ; preds = %137, %113
  br label %139

139:                                              ; preds = %138, %101
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %110
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(i32, i32, i32, i32) #1

declare dso_local %struct.ath6kl_sta* @ath6kl_find_sta(%struct.ath6kl_vif*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath6kl_process_uapsdq(%struct.ath6kl_sta*, %struct.ath6kl_vif*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ath6kl_process_psq(%struct.ath6kl_sta*, %struct.ath6kl_vif*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
