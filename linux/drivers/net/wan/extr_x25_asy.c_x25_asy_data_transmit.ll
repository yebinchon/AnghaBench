; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_data_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_data_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.x25_asy = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"tbusy drop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @x25_asy_data_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_data_transmit(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.x25_asy*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %6)
  store %struct.x25_asy* %7, %struct.x25_asy** %5, align 8
  %8 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %9 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %12 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @netif_queue_stopped(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %18 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16, %2
  %22 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %23 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %59

29:                                               ; preds = %16
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %34 = call i32 @x25_asy_lock(%struct.x25_asy* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %37
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @x25_asy_encaps(%struct.x25_asy* %45, i32 %48, i64 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @dev_kfree_skb(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %32, %29
  %56 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  %57 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %21
  ret void
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @x25_asy_lock(%struct.x25_asy*) #1

declare dso_local i32 @x25_asy_encaps(%struct.x25_asy*, i32, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
