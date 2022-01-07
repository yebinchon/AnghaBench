; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_hdrpull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_rx_hdrpull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32 }
%struct.sk_buff = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, %struct.sk_buff*, %struct.brcmf_if**)* @brcmf_rx_hdrpull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_rx_hdrpull(%struct.brcmf_pub* %0, %struct.sk_buff* %1, %struct.brcmf_if** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.brcmf_if**, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.brcmf_if** %2, %struct.brcmf_if*** %7, align 8
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %12 = call i32 @brcmf_proto_hdrpull(%struct.brcmf_pub* %9, i32 1, %struct.sk_buff* %10, %struct.brcmf_if** %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %16, align 8
  %18 = icmp ne %struct.brcmf_if* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %20, align 8
  %22 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %19, %15, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %32 = load %struct.brcmf_if*, %struct.brcmf_if** %31, align 8
  %33 = icmp ne %struct.brcmf_if* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %35, align 8
  %37 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34, %30, %25
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %19
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.brcmf_if**, %struct.brcmf_if*** %7, align 8
  %51 = load %struct.brcmf_if*, %struct.brcmf_if** %50, align 8
  %52 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @eth_type_trans(%struct.sk_buff* %49, %struct.TYPE_4__* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @brcmf_proto_hdrpull(%struct.brcmf_pub*, i32, %struct.sk_buff*, %struct.brcmf_if**) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
