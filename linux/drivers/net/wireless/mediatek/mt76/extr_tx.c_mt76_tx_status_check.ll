; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_wcid = type { i32 }
%struct.sk_buff_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_tx_status_check(%struct.mt76_dev* %0, %struct.mt76_wcid* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff_head, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %9 = call i32 @mt76_tx_status_lock(%struct.mt76_dev* %8, %struct.sk_buff_head* %7)
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %11 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 -1, i32 0
  %16 = call i32 @mt76_tx_status_skb_get(%struct.mt76_dev* %10, %struct.mt76_wcid* %11, i32 %15, %struct.sk_buff_head* %7)
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %18 = call i32 @mt76_tx_status_unlock(%struct.mt76_dev* %17, %struct.sk_buff_head* %7)
  ret void
}

declare dso_local i32 @mt76_tx_status_lock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

declare dso_local i32 @mt76_tx_status_skb_get(%struct.mt76_dev*, %struct.mt76_wcid*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @mt76_tx_status_unlock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
