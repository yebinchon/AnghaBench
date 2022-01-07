; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_meta_xdp = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xdp_frame = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@CPSW_XMETA_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_tx_handler(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpsw_meta_xdp*, align 8
  %8 = alloca %struct.xdp_frame*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @cpsw_is_xdpf_handle(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.xdp_frame* @cpsw_handle_to_xdpf(i8* %17)
  store %struct.xdp_frame* %18, %struct.xdp_frame** %8, align 8
  %19 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %20 = bitcast %struct.xdp_frame* %19 to i8*
  %21 = load i32, i32* @CPSW_XMETA_OFFSET, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %20, i64 %22
  %24 = bitcast i8* %23 to %struct.cpsw_meta_xdp*
  store %struct.cpsw_meta_xdp* %24, %struct.cpsw_meta_xdp** %7, align 8
  %25 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %7, align 8
  %26 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %9, align 8
  %28 = load %struct.cpsw_meta_xdp*, %struct.cpsw_meta_xdp** %7, align 8
  %29 = getelementptr inbounds %struct.cpsw_meta_xdp, %struct.cpsw_meta_xdp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  %31 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %32 = call i32 @xdp_return_frame(%struct.xdp_frame* %31)
  br label %49

33:                                               ; preds = %3
  %34 = load i8*, i8** %4, align 8
  %35 = bitcast i8* %34 to %struct.sk_buff*
  store %struct.sk_buff* %35, %struct.sk_buff** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  store %struct.net_device* %38, %struct.net_device** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = call %struct.TYPE_4__* @ndev_to_cpsw(%struct.net_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = call i32 @cpts_tx_timestamp(i32 %44, %struct.sk_buff* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %33, %16
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %50, i32 %51)
  store %struct.netdev_queue* %52, %struct.netdev_queue** %10, align 8
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %54 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %59 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %66
  store i32 %71, i32* %69, align 4
  ret void
}

declare dso_local i64 @cpsw_is_xdpf_handle(i8*) #1

declare dso_local %struct.xdp_frame* @cpsw_handle_to_xdpf(i8*) #1

declare dso_local i32 @xdp_return_frame(%struct.xdp_frame*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @cpts_tx_timestamp(i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
