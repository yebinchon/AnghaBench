; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_new_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_new_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i8*, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@D11_PHY_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_set_new_beacon(%struct.brcms_c_info* %0, %struct.sk_buff* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %39

12:                                               ; preds = %4
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 2
  store %struct.sk_buff* %23, %struct.sk_buff** %25, align 8
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %30 = call i32 @skb_push(%struct.sk_buff* %28, i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %38 = call i32 @brcms_c_update_beacon(%struct.brcms_c_info* %37)
  br label %39

39:                                               ; preds = %22, %11
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcms_c_update_beacon(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
