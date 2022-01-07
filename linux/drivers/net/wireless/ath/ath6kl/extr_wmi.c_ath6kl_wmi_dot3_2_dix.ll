; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_dot3_2_dix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_dot3_2_dix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.ethhdr* }
%struct.ethhdr = type { i32 }
%struct.ath6kl_llc_snap_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_dot3_2_dix(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath6kl_llc_snap_hdr*, align 8
  %5 = alloca %struct.ethhdr, align 4
  %6 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp eq %struct.sk_buff* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.ethhdr*, %struct.ethhdr** %17, align 8
  store %struct.ethhdr* %18, %struct.ethhdr** %6, align 8
  %19 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %20 = call i32 @memcpy(%struct.ethhdr* %5, %struct.ethhdr* %19, i32 4)
  %21 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i64 4
  %23 = bitcast %struct.ethhdr* %22 to %struct.ath6kl_llc_snap_hdr*
  store %struct.ath6kl_llc_snap_hdr* %23, %struct.ath6kl_llc_snap_hdr** %4, align 8
  %24 = load %struct.ath6kl_llc_snap_hdr*, %struct.ath6kl_llc_snap_hdr** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, %struct.ath6kl_llc_snap_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @skb_pull(%struct.sk_buff* %28, i32 4)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.ethhdr*, %struct.ethhdr** %31, align 8
  store %struct.ethhdr* %32, %struct.ethhdr** %6, align 8
  %33 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %34 = call i32 @memcpy(%struct.ethhdr* %33, %struct.ethhdr* %5, i32 4)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(%struct.ethhdr*, %struct.ethhdr*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
