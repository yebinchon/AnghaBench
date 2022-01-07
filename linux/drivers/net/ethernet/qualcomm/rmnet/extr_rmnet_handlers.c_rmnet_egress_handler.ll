; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_egress_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_handlers.c_rmnet_egress_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.rmnet_port = type { i32 }
%struct.rmnet_priv = type { %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmnet_egress_handler(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca %struct.rmnet_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @sk_pacing_shift_update(i32 %9, i32 8)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.rmnet_priv* %15, %struct.rmnet_priv** %5, align 8
  %16 = load %struct.rmnet_priv*, %struct.rmnet_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.rmnet_priv*, %struct.rmnet_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  %27 = call %struct.rmnet_port* @rmnet_get_port(%struct.net_device* %26)
  store %struct.rmnet_port* %27, %struct.rmnet_port** %4, align 8
  %28 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %29 = icmp ne %struct.rmnet_port* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i64 @rmnet_map_egress_handler(%struct.sk_buff* %32, %struct.rmnet_port* %33, i32 %34, %struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @rmnet_vnd_tx_fixup(%struct.sk_buff* %40, %struct.net_device* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = call i32 @dev_queue_xmit(%struct.sk_buff* %43)
  br label %55

45:                                               ; preds = %38, %30
  %46 = load %struct.rmnet_priv*, %struct.rmnet_priv** %5, align 8
  %47 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @this_cpu_inc(i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @sk_pacing_shift_update(i32, i32) #1

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port(%struct.net_device*) #1

declare dso_local i64 @rmnet_map_egress_handler(%struct.sk_buff*, %struct.rmnet_port*, i32, %struct.net_device*) #1

declare dso_local i32 @rmnet_vnd_tx_fixup(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
