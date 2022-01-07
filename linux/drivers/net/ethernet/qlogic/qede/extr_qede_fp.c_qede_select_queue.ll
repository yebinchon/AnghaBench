; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.qede_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %7, align 8
  %11 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %12 = call i32 @QEDE_TSS_COUNT(%struct.qede_dev* %11)
  %13 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %19 = call i32 @QEDE_TSS_COUNT(%struct.qede_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @netdev_pick_tx(%struct.net_device* %22, %struct.sk_buff* %23, i32* null)
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %24, %25
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %26, %21 ], [ 0, %27 ]
  ret i32 %29
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @QEDE_TSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
