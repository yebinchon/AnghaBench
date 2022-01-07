; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_txtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_txtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.dp83640_private* }
%struct.dp83640_private = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.dp83640_skb_info = type { i64 }
%struct.TYPE_2__ = type { i32 }

@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SKB_TIMESTAMP_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.sk_buff*, i32)* @dp83640_txtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp83640_txtstamp(%struct.phy_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dp83640_skb_info*, align 8
  %8 = alloca %struct.dp83640_private*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dp83640_skb_info*
  store %struct.dp83640_skb_info* %12, %struct.dp83640_skb_info** %7, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load %struct.dp83640_private*, %struct.dp83640_private** %14, align 8
  store %struct.dp83640_private* %15, %struct.dp83640_private** %8, align 8
  %16 = load %struct.dp83640_private*, %struct.dp83640_private** %8, align 8
  %17 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %45 [
    i32 128, label %19
    i32 129, label %28
    i32 130, label %44
  ]

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @is_sync(%struct.sk_buff* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  br label %48

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %3, %27
  %29 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @SKB_TIMESTAMP_TIMEOUT, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.dp83640_skb_info*, %struct.dp83640_skb_info** %7, align 8
  %39 = getelementptr inbounds %struct.dp83640_skb_info, %struct.dp83640_skb_info* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.dp83640_private*, %struct.dp83640_private** %8, align 8
  %41 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_queue_tail(i32* %41, %struct.sk_buff* %42)
  br label %48

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %3, %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %24, %45, %28
  ret void
}

declare dso_local i32 @is_sync(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
