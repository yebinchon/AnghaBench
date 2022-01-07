; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_tx_queue_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_tx_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i64 }
%struct.brcmf_msgbuf = type { %struct.brcmf_flowring* }
%struct.brcmf_flowring = type { i32 }
%struct.ethhdr = type { i32 }

@BRCMF_FLOWRING_INVALID_ID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_TRICKLE_TXWORKER_THRS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, %struct.sk_buff*)* @brcmf_msgbuf_tx_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_msgbuf_tx_queue_data(%struct.brcmf_pub* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.brcmf_msgbuf*, align 8
  %9 = alloca %struct.brcmf_flowring*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.brcmf_msgbuf*
  store %struct.brcmf_msgbuf* %19, %struct.brcmf_msgbuf** %8, align 8
  %20 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %8, align 8
  %21 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %20, i32 0, i32 0
  %22 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %21, align 8
  store %struct.brcmf_flowring* %22, %struct.brcmf_flowring** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ethhdr*
  store %struct.ethhdr* %26, %struct.ethhdr** %10, align 8
  %27 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %9, align 8
  %28 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @brcmf_flowring_lookup(%struct.brcmf_flowring* %27, i32 %30, i32 %33, i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %3
  %40 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i64 @brcmf_msgbuf_flowring_create(%struct.brcmf_msgbuf* %40, i32 %41, %struct.sk_buff* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %65

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i64 @brcmf_flowring_enqueue(%struct.brcmf_flowring* %52, i64 %53, %struct.sk_buff* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @BRCMF_MSGBUF_TRICKLE_TXWORKER_THRS, align 8
  %58 = srem i64 %56, %57
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @brcmf_msgbuf_schedule_txdata(%struct.brcmf_msgbuf* %61, i64 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %51, %47
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @brcmf_flowring_lookup(%struct.brcmf_flowring*, i32, i32, i32) #1

declare dso_local i64 @brcmf_msgbuf_flowring_create(%struct.brcmf_msgbuf*, i32, %struct.sk_buff*) #1

declare dso_local i64 @brcmf_flowring_enqueue(%struct.brcmf_flowring*, i64, %struct.sk_buff*) #1

declare dso_local i32 @brcmf_msgbuf_schedule_txdata(%struct.brcmf_msgbuf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
