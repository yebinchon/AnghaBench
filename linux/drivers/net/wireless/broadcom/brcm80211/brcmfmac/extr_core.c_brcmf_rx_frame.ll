; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enter: %s: rxp=%p\0A\00", align 1
@BCMILCP_SUBTYPE_VENDOR_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_rx_frame(%struct.device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca %struct.brcmf_bus*, align 8
  %9 = alloca %struct.brcmf_pub*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %10)
  store %struct.brcmf_bus* %11, %struct.brcmf_bus** %8, align 8
  %12 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %13 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %9, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @brcmf_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.sk_buff* %18)
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @brcmf_rx_hdrpull(%struct.brcmf_pub* %20, %struct.sk_buff* %21, %struct.brcmf_if** %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @brcmf_proto_is_reorder_skb(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @brcmf_proto_rxreorder(%struct.brcmf_if* %30, %struct.sk_buff* %31)
  br label %47

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %38 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @BCMILCP_SUBTYPE_VENDOR_LONG, align 4
  %42 = call i32 @brcmf_fweh_process_skb(i32 %39, %struct.sk_buff* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  %44 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @brcmf_netif_rx(%struct.brcmf_if* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %24, %43, %29
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @brcmf_rx_hdrpull(%struct.brcmf_pub*, %struct.sk_buff*, %struct.brcmf_if**) #1

declare dso_local i64 @brcmf_proto_is_reorder_skb(%struct.sk_buff*) #1

declare dso_local i32 @brcmf_proto_rxreorder(%struct.brcmf_if*, %struct.sk_buff*) #1

declare dso_local i32 @brcmf_fweh_process_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_netif_rx(%struct.brcmf_if*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
