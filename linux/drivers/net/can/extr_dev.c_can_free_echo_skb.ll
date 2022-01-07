; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_free_echo_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_free_echo_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_priv = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_free_echo_skb(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.can_priv* %7, %struct.can_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %10 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp uge i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %16 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %25 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @dev_kfree_skb_any(i32* %30)
  %32 = load %struct.can_priv*, %struct.can_priv** %5, align 8
  %33 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
