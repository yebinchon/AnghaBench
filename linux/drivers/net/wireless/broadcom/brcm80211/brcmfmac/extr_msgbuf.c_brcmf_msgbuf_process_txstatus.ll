; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_txstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_process_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { %struct.TYPE_8__*, %struct.brcmf_commonring**, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.brcmf_commonring = type { i32 }
%struct.msgbuf_tx_status = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }

@BRCMF_H2D_MSGRING_FLOWRING_IDSTART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i8*)* @brcmf_msgbuf_process_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_process_txstatus(%struct.brcmf_msgbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_commonring*, align 8
  %6 = alloca %struct.msgbuf_tx_status*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.msgbuf_tx_status*
  store %struct.msgbuf_tx_status* %11, %struct.msgbuf_tx_status** %6, align 8
  %12 = load %struct.msgbuf_tx_status*, %struct.msgbuf_tx_status** %6, align 8
  %13 = getelementptr inbounds %struct.msgbuf_tx_status, %struct.msgbuf_tx_status* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  %17 = sub nsw i64 %16, 1
  store i64 %17, i64* %7, align 8
  %18 = load %struct.msgbuf_tx_status*, %struct.msgbuf_tx_status** %6, align 8
  %19 = getelementptr inbounds %struct.msgbuf_tx_status, %struct.msgbuf_tx_status* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* @BRCMF_H2D_MSGRING_FLOWRING_IDSTART, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %24, %23
  store i64 %25, i64* %9, align 8
  %26 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %27 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %34 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32 %32, i32 %35, i64 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %66

41:                                               ; preds = %2
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %44 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @set_bit(i64 %42, i32 %45)
  %47 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %48 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %47, i32 0, i32 1
  %49 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %49, i64 %50
  %52 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %51, align 8
  store %struct.brcmf_commonring* %52, %struct.brcmf_commonring** %5, align 8
  %53 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %5, align 8
  %54 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  %56 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %57 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load %struct.msgbuf_tx_status*, %struct.msgbuf_tx_status** %6, align 8
  %60 = getelementptr inbounds %struct.msgbuf_tx_status, %struct.msgbuf_tx_status* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @brcmf_get_ifp(%struct.TYPE_8__* %58, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = call i32 @brcmf_txfinalize(i32 %63, %struct.sk_buff* %64, i32 1)
  br label %66

66:                                               ; preds = %41, %40
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @brcmf_msgbuf_get_pktid(i32, i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @brcmf_txfinalize(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_get_ifp(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
