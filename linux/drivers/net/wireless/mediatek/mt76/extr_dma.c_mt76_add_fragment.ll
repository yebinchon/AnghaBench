; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_add_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_add_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mt76_dev*, %struct.mt76_queue*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.mt76_queue = type { %struct.sk_buff*, i32, i64 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_queue*, i8*, i32, i32)* @mt76_add_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_add_fragment(%struct.mt76_dev* %0, %struct.mt76_queue* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca %struct.mt76_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.page* @virt_to_head_page(i8* %14)
  store %struct.page* %15, %struct.page** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.page*, %struct.page** %11, align 8
  %18 = call i8* @page_address(%struct.page* %17)
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %24 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %35 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.page*, %struct.page** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %42 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @skb_add_rx_frag(%struct.sk_buff* %33, i32 %37, %struct.page* %38, i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  br label %66

48:                                               ; preds = %5
  %49 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %50 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %49, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  %51 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %52 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.mt76_dev*, %struct.mt76_queue*, %struct.sk_buff*)*, i32 (%struct.mt76_dev*, %struct.mt76_queue*, %struct.sk_buff*)** %54, align 8
  %56 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %57 = load %struct.mt76_queue*, %struct.mt76_queue** %7, align 8
  %58 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %59 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %57, i64 %62
  %64 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %65 = call i32 %55(%struct.mt76_dev* %56, %struct.mt76_queue* %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %48, %47
  ret void
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
