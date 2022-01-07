; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_release_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_release_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_msgbuf_pktids = type { i64, %struct.TYPE_4__*, i32, i64, i32, %struct.TYPE_3__, %struct.brcmf_msgbuf_pktids* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.brcmf_msgbuf_pktid = type { i64, %struct.TYPE_4__*, i32, i64, i32, %struct.TYPE_3__, %struct.brcmf_msgbuf_pktid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.brcmf_msgbuf_pktids*)* @brcmf_msgbuf_release_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_release_array(%struct.device* %0, %struct.brcmf_msgbuf_pktids* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.brcmf_msgbuf_pktids*, align 8
  %5 = alloca %struct.brcmf_msgbuf_pktid*, align 8
  %6 = alloca %struct.brcmf_msgbuf_pktid*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.brcmf_msgbuf_pktids* %1, %struct.brcmf_msgbuf_pktids** %4, align 8
  %8 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %4, align 8
  %9 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %8, i32 0, i32 6
  %10 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %9, align 8
  %11 = bitcast %struct.brcmf_msgbuf_pktids* %10 to %struct.brcmf_msgbuf_pktid*
  store %struct.brcmf_msgbuf_pktid* %11, %struct.brcmf_msgbuf_pktid** %5, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %48, %2
  %13 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %13, i64 %14
  %16 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %12
  %21 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %21, i64 %22
  store %struct.brcmf_msgbuf_pktid* %23, %struct.brcmf_msgbuf_pktid** %6, align 8
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %29 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %34 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %4, align 8
  %38 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_unmap_single(%struct.device* %24, i32 %27, i64 %36, i32 %39)
  %41 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %6, align 8
  %42 = getelementptr inbounds %struct.brcmf_msgbuf_pktid, %struct.brcmf_msgbuf_pktid* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @brcmu_pkt_buf_free_skb(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %20, %12
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %4, align 8
  %51 = getelementptr inbounds %struct.brcmf_msgbuf_pktids, %struct.brcmf_msgbuf_pktids* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %12, label %54

54:                                               ; preds = %48
  %55 = load %struct.brcmf_msgbuf_pktid*, %struct.brcmf_msgbuf_pktid** %5, align 8
  %56 = bitcast %struct.brcmf_msgbuf_pktid* %55 to %struct.brcmf_msgbuf_pktids*
  %57 = call i32 @kfree(%struct.brcmf_msgbuf_pktids* %56)
  %58 = load %struct.brcmf_msgbuf_pktids*, %struct.brcmf_msgbuf_pktids** %4, align 8
  %59 = call i32 @kfree(%struct.brcmf_msgbuf_pktids* %58)
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @brcmu_pkt_buf_free_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.brcmf_msgbuf_pktids*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
