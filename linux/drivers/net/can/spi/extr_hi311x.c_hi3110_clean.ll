; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hi3110_priv = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hi3110_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3110_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hi3110_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.hi3110_priv* %5, %struct.hi3110_priv** %3, align 8
  %6 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %23 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb(i32* %24)
  %26 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %27 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %32 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @can_free_echo_skb(i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30, %21
  %36 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %37 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %39 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @can_free_echo_skb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
