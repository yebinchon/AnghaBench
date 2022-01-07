; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { %struct.brcmf_flowring_ring** }
%struct.brcmf_flowring_ring = type { i32, i32 }
%struct.sk_buff = type { i32 }

@BRCMF_FLOWRING_HIGH = common dso_local global i64 0, align 8
@MSGBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Flowcontrol: BLOCK for ring %d\0A\00", align 1
@BRCMF_FLOWRING_LOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @brcmf_flowring_enqueue(%struct.brcmf_flowring* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.brcmf_flowring_ring*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %8, i32 0, i32 0
  %10 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, i64 %11
  %13 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %12, align 8
  store %struct.brcmf_flowring_ring* %13, %struct.brcmf_flowring_ring** %7, align 8
  %14 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %15 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_queue_tail(i32* %15, %struct.sk_buff* %16)
  %18 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %19 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %3
  %23 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %24 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %23, i32 0, i32 0
  %25 = call i64 @skb_queue_len(i32* %24)
  %26 = load i64, i64* @BRCMF_FLOWRING_HIGH, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @brcmf_flowring_block(%struct.brcmf_flowring* %29, i64 %30, i32 1)
  %32 = load i32, i32* @MSGBUF, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @brcmf_dbg(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %36 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %35, i32 0, i32 0
  %37 = call i64 @skb_queue_len(i32* %36)
  %38 = load i64, i64* @BRCMF_FLOWRING_LOW, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @brcmf_flowring_block(%struct.brcmf_flowring* %41, i64 %42, i32 0)
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %22, %3
  %46 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %7, align 8
  %47 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %46, i32 0, i32 0
  %48 = call i64 @skb_queue_len(i32* %47)
  ret i64 %48
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @brcmf_flowring_block(%struct.brcmf_flowring*, i64, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
