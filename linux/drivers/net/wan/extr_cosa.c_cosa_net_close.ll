; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.channel_data = type { %struct.TYPE_2__*, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cosa_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_net_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.channel_data*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.channel_data* @dev_to_chan(%struct.net_device* %5)
  store %struct.channel_data* %6, %struct.channel_data** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @hdlc_close(%struct.net_device* %9)
  %11 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %12 = call i32 @cosa_disable_rx(%struct.channel_data* %11)
  %13 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %14 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %20 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %25 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree_skb(i32* %26)
  %28 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %29 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %32 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %37 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree_skb(i32* %38)
  %40 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %41 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %44 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %46 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.channel_data*, %struct.channel_data** %3, align 8
  %52 = getelementptr inbounds %struct.channel_data, %struct.channel_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  ret i32 0
}

declare dso_local %struct.channel_data* @dev_to_chan(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

declare dso_local i32 @cosa_disable_rx(%struct.channel_data*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
