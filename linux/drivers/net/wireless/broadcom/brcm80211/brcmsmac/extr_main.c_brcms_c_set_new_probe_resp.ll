; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_new_probe_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_new_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@D11_PHY_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_set_new_probe_resp(%struct.brcms_c_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = icmp ne %struct.sk_buff* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %29

8:                                                ; preds = %2
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 0
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %20, i32 0, i32 0
  store %struct.sk_buff* %19, %struct.sk_buff** %21, align 8
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %25 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %26 = call i32 @skb_push(%struct.sk_buff* %24, i32 %25)
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %28 = call i32 @brcms_c_update_probe_resp(%struct.brcms_c_info* %27, i32 0)
  br label %29

29:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcms_c_update_probe_resp(%struct.brcms_c_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
