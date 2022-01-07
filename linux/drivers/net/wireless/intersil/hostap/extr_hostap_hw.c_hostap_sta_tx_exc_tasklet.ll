; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_sta_tx_exc_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_sta_tx_exc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hfa384x_tx_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hostap_sta_tx_exc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_sta_tx_exc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hfa384x_tx_frame*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  br label %9

9:                                                ; preds = %42, %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call %struct.sk_buff* @skb_dequeue(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hfa384x_tx_frame*
  store %struct.hfa384x_tx_frame* %18, %struct.hfa384x_tx_frame** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 4
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load %struct.hfa384x_tx_frame*, %struct.hfa384x_tx_frame** %5, align 8
  %26 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hostap_80211_get_hdrlen(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @skb_pull(%struct.sk_buff* %29, i32 %33)
  %35 = load %struct.hfa384x_tx_frame*, %struct.hfa384x_tx_frame** %5, align 8
  %36 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @memmove(i32 %34, i32* %36, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @hostap_handle_sta_tx_exc(%struct.TYPE_3__* %39, %struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %24, %14
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb(%struct.sk_buff* %43)
  br label %9

45:                                               ; preds = %9
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @hostap_80211_get_hdrlen(i32) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @hostap_handle_sta_tx_exc(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
