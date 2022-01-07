; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_txfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.dma_pub** }
%struct.dma_pub = type { i64 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"txfifo: fatal, toss frames !!!\0A\00", align 1
@TX_HEADROOM = common dso_local global i64 0, align 8
@TX_BCMC_FIFO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_txfifo(%struct.brcms_c_info* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dma_pub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.dma_pub**, %struct.dma_pub*** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.dma_pub*, %struct.dma_pub** %14, i64 %15
  %17 = load %struct.dma_pub*, %struct.dma_pub** %16, align 8
  store %struct.dma_pub* %17, %struct.dma_pub** %7, align 8
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %19 = load %struct.dma_pub*, %struct.dma_pub** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @dma_txfast(%struct.brcms_c_info* %18, %struct.dma_pub* %19, %struct.sk_buff* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %26 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wiphy_err(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.dma_pub*, %struct.dma_pub** %7, align 8
  %33 = getelementptr inbounds %struct.dma_pub, %struct.dma_pub* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TX_HEADROOM, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @TX_BCMC_FIFO, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %43 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ieee80211_queue_stopped(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %52 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ieee80211_stop_queue(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %41, %37, %29
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @dma_txfast(%struct.brcms_c_info*, %struct.dma_pub*, %struct.sk_buff*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_stopped(i32, i32) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
