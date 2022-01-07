; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.brcmf_flowring = type { %struct.brcmf_flowring_ring** }
%struct.brcmf_flowring_ring = type { i64, i32, i64 }

@RING_OPEN = common dso_local global i64 0, align 8
@BRCMF_FLOWRING_LOW = common dso_local global i64 0, align 8
@MSGBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Flowcontrol: OPEN for ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @brcmf_flowring_dequeue(%struct.brcmf_flowring* %0, i64 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.brcmf_flowring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcmf_flowring_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %8, i32 0, i32 0
  %10 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, i64 %11
  %13 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %12, align 8
  store %struct.brcmf_flowring_ring* %13, %struct.brcmf_flowring_ring** %6, align 8
  %14 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %15 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RING_OPEN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %22 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %21, i32 0, i32 1
  %23 = call %struct.sk_buff* @skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %30 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %29, i32 0, i32 1
  %31 = call i64 @skb_queue_len(i32* %30)
  %32 = load i64, i64* @BRCMF_FLOWRING_LOW, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @brcmf_flowring_block(%struct.brcmf_flowring* %35, i64 %36, i32 0)
  %38 = load i32, i32* @MSGBUF, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @brcmf_dbg(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %34, %28, %20
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %43

43:                                               ; preds = %41, %19
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @brcmf_flowring_block(%struct.brcmf_flowring*, i64, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
