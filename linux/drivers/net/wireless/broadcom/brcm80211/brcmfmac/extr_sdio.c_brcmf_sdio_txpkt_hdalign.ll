; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txpkt_hdalign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txpkt_hdalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.brcmf_bus_stats }
%struct.brcmf_bus_stats = type { i32, i32 }
%struct.sk_buff = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, %struct.sk_buff*)* @brcmf_sdio_txpkt_hdalign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_txpkt_hdalign(%struct.brcmf_sdio* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.brcmf_bus_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = urem i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @skb_headroom(%struct.sk_buff* %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.brcmf_bus_stats* %32, %struct.brcmf_bus_stats** %6, align 8
  %33 = load %struct.brcmf_bus_stats*, %struct.brcmf_bus_stats** %6, align 8
  %34 = getelementptr inbounds %struct.brcmf_bus_stats, %struct.brcmf_bus_stats* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @skb_cow_head(%struct.sk_buff* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.brcmf_bus_stats*, %struct.brcmf_bus_stats** %6, align 8
  %42 = getelementptr inbounds %struct.brcmf_bus_stats, %struct.brcmf_bus_stats* %41, i32 0, i32 0
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %26
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @skb_push(%struct.sk_buff* %48, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %47, %2
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %59 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @memset(i32* %56, i32 0, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %40
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
