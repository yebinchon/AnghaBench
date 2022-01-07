; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fweh.h_brcmf_fweh_process_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fweh.h_brcmf_fweh_process_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.brcmf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@ETH_P_LINK_CTL = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@BRCM_OUI = common dso_local global i32 0, align 4
@BCMILCP_BCM_SUBTYPE_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pub*, %struct.sk_buff*, i64)* @brcmf_fweh_process_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_fweh_process_skb(%struct.brcmf_pub* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_LINK_CTL, align 4
  %14 = call i64 @cpu_to_be16(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %71

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ETH_HLEN, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %71

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i64 @skb_mac_header(%struct.sk_buff* %27)
  %29 = inttoptr i64 %28 to %struct.brcmf_event*
  store %struct.brcmf_event* %29, %struct.brcmf_event** %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @unlikely(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.brcmf_event*, %struct.brcmf_event** %7, align 8
  %35 = getelementptr inbounds %struct.brcmf_event, %struct.brcmf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i64 @get_unaligned_be16(i32* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %71

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* @BRCM_OUI, align 4
  %45 = load %struct.brcmf_event*, %struct.brcmf_event** %7, align 8
  %46 = getelementptr inbounds %struct.brcmf_event, %struct.brcmf_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i64 @memcmp(i32 %44, i32* %49, i32 8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %71

53:                                               ; preds = %43
  %54 = load %struct.brcmf_event*, %struct.brcmf_event** %7, align 8
  %55 = getelementptr inbounds %struct.brcmf_event, %struct.brcmf_event* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i64 @get_unaligned_be16(i32* %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @BCMILCP_BCM_SUBTYPE_EVENT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %71

62:                                               ; preds = %53
  %63 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %64 = load %struct.brcmf_event*, %struct.brcmf_event** %7, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ETH_HLEN, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @brcmf_fweh_process_event(%struct.brcmf_pub* %63, %struct.brcmf_event* %64, i32 %69)
  br label %71

71:                                               ; preds = %62, %61, %52, %41, %25, %16
  ret void
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @brcmf_fweh_process_event(%struct.brcmf_pub*, %struct.brcmf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
