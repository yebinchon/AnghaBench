; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_clean_timer_expire_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_clean_timer_expire_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { i32 }

@clean_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VNET_CLEAN_TIMEOUT = common dso_local global i64 0, align 8
@port = common dso_local global %struct.vnet_port* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunvnet_clean_timer_expire_common(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %7 = ptrtoint %struct.vnet_port* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @clean_timer, align 4
  %10 = call %struct.vnet_port* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.vnet_port* %10, %struct.vnet_port** %3, align 8
  %11 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %12 = call i32 @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %11)
  %13 = call i32 @netif_tx_lock(i32 %12)
  %14 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %15 = call %struct.sk_buff* @vnet_clean_tx_ring(%struct.vnet_port* %14, i32* %5)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %17 = call i32 @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %16)
  %18 = call i32 @netif_tx_unlock(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @vnet_free_skbs(%struct.sk_buff* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %25 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @VNET_CLEAN_TIMEOUT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mod_timer(i32* %25, i64 %28)
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %32 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %31, i32 0, i32 0
  %33 = call i32 @del_timer(i32* %32)
  br label %34

34:                                               ; preds = %30, %23
  ret void
}

declare dso_local %struct.vnet_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_tx_lock(i32) #1

declare dso_local i32 @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port*) #1

declare dso_local %struct.sk_buff* @vnet_clean_tx_ring(%struct.vnet_port*, i32*) #1

declare dso_local i32 @netif_tx_unlock(i32) #1

declare dso_local i32 @vnet_free_skbs(%struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
