; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_meta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_meta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_tx_meta_v1 = type { i32, i32 }
%struct.wmi_tx_meta_v2 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WMI_MAX_TX_META_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, %struct.sk_buff*, i32*, i8*)* @ath6kl_wmi_meta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_meta_add(%struct.wmi* %0, %struct.sk_buff* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wmi_tx_meta_v1*, align 8
  %11 = alloca %struct.wmi_tx_meta_v2*, align 8
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = icmp eq %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i1 [ true, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %53 [
    i32 129, label %28
    i32 128, label %41
  ]

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* @WMI_MAX_TX_META_SZ, align 4
  %31 = call i32 @skb_push(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.wmi_tx_meta_v1*
  store %struct.wmi_tx_meta_v1* %35, %struct.wmi_tx_meta_v1** %10, align 8
  %36 = load %struct.wmi_tx_meta_v1*, %struct.wmi_tx_meta_v1** %10, align 8
  %37 = getelementptr inbounds %struct.wmi_tx_meta_v1, %struct.wmi_tx_meta_v1* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.wmi_tx_meta_v1*, %struct.wmi_tx_meta_v1** %10, align 8
  %39 = getelementptr inbounds %struct.wmi_tx_meta_v1, %struct.wmi_tx_meta_v1* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 129, i32* %40, align 4
  br label %53

41:                                               ; preds = %25
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load i32, i32* @WMI_MAX_TX_META_SZ, align 4
  %44 = call i32 @skb_push(%struct.sk_buff* %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.wmi_tx_meta_v2*
  store %struct.wmi_tx_meta_v2* %48, %struct.wmi_tx_meta_v2** %11, align 8
  %49 = load %struct.wmi_tx_meta_v2*, %struct.wmi_tx_meta_v2** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to %struct.wmi_tx_meta_v2*
  %52 = call i32 @memcpy(%struct.wmi_tx_meta_v2* %49, %struct.wmi_tx_meta_v2* %51, i32 4)
  br label %53

53:                                               ; preds = %25, %41, %28
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.wmi_tx_meta_v2*, %struct.wmi_tx_meta_v2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
