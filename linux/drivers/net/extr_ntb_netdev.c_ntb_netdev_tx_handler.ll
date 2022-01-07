; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ntb_netdev.c_ntb_netdev_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.ntb_netdev = type { i32 }

@tx_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*, i8*, i8*, i32)* @ntb_netdev_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_netdev_tx_handler(%struct.ntb_transport_qp* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ntb_transport_qp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ntb_netdev*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call %struct.ntb_netdev* @netdev_priv(%struct.net_device* %14)
  store %struct.ntb_netdev* %15, %struct.ntb_netdev** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %54

43:                                               ; preds = %24
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %27
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  %57 = load %struct.ntb_netdev*, %struct.ntb_netdev** %11, align 8
  %58 = getelementptr inbounds %struct.ntb_netdev, %struct.ntb_netdev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntb_transport_tx_free_entry(i32 %59)
  %61 = load i64, i64* @tx_start, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = call i32 (...) @smp_mb()
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = call i64 @netif_queue_stopped(%struct.net_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = call i32 @netif_wake_queue(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %23, %71, %54
  ret void
}

declare dso_local %struct.ntb_netdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ntb_transport_tx_free_entry(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
