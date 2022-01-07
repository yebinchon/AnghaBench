; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_txfinalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_txfinalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }

@ETH_P_PAE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_txfinalize(%struct.brcmf_if* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ethhdr*
  store %struct.ethhdr* %12, %struct.ethhdr** %7, align 8
  %13 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %14 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohs(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @ETH_P_PAE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %21, i32 0, i32 2
  %23 = call i32 @atomic_dec(i32* %22)
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 1
  %26 = call i64 @waitqueue_active(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %30 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  br label %32

32:                                               ; preds = %28, %20
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %38 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff* %45)
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
