; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_flush_echo_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_flush_echo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.can_priv = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @can_flush_echo_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_flush_echo_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.can_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.can_priv* %7, %struct.can_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  store %struct.net_device_stats* %9, %struct.net_device_stats** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %13 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %18 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %16
  %26 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %27 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree_skb(i32* %32)
  %34 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %35 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %25, %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %10

52:                                               ; preds = %10
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
