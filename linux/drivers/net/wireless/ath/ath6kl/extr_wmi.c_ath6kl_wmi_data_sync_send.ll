; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_data_sync_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_data_sync_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_data_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYNC_MSGTYPE = common dso_local global i32 0, align 4
@WMI_DATA_HDR_MSG_TYPE_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_IF_IDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*, i32, i32)* @ath6kl_wmi_data_sync_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_data_sync_send(%struct.wmi* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi_data_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.wmi*, %struct.wmi** %6, align 8
  %17 = getelementptr inbounds %struct.wmi, %struct.wmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ true, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i32 @dev_kfree_skb(%struct.sk_buff* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %55

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i32 @skb_push(%struct.sk_buff* %31, i32 8)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.wmi_data_hdr*
  store %struct.wmi_data_hdr* %36, %struct.wmi_data_hdr** %10, align 8
  %37 = load i32, i32* @SYNC_MSGTYPE, align 4
  %38 = load i32, i32* @WMI_DATA_HDR_MSG_TYPE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %10, align 8
  %41 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @WMI_DATA_HDR_IF_IDX_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %10, align 8
  %47 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wmi*, %struct.wmi** %6, align 8
  %49 = getelementptr inbounds %struct.wmi, %struct.wmi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ath6kl_control_tx(i32 %50, %struct.sk_buff* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %30, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_control_tx(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
