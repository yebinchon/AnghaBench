; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enter: %s: rxp=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_rx_event(%struct.device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_bus*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %8)
  store %struct.brcmf_bus* %9, %struct.brcmf_bus** %6, align 8
  %10 = load %struct.brcmf_bus*, %struct.brcmf_bus** %6, align 8
  %11 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %7, align 8
  %13 = load i32, i32* @EVENT, align 4
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @dev_name(%struct.device* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.sk_buff* %16)
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @brcmf_rx_hdrpull(%struct.brcmf_pub* %18, %struct.sk_buff* %19, %struct.brcmf_if** %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @brcmf_fweh_process_skb(i32 %26, %struct.sk_buff* %27, i32 0)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %29)
  br label %31

31:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @brcmf_rx_hdrpull(%struct.brcmf_pub*, %struct.sk_buff*, %struct.brcmf_if**) #1

declare dso_local i32 @brcmf_fweh_process_skb(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
