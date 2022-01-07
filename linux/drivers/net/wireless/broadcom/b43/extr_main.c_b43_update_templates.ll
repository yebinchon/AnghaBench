; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_update_templates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_update_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wl = type { i32, i32, i32, i32, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wl*)* @b43_update_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_update_templates(%struct.b43_wl* %0) #0 {
  %2 = alloca %struct.b43_wl*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.b43_wl* %0, %struct.b43_wl** %2, align 8
  %6 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %8, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %21, i32 0, i32 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %26 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %25, i32 0, i32 5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %29, i32 0, i32 5
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %32 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %34 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %36 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %35, i32 0, i32 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.b43_wl*, %struct.b43_wl** %2, align 8
  %43 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %42, i32 0, i32 2
  %44 = call i32 @ieee80211_queue_work(i32 %41, i32* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %20
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %19, %47, %20
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
