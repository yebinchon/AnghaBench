; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_handle_cache_critical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_handle_cache_critical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.can_frame = type { i64, i32*, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*)* @pucan_handle_cache_critical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_handle_cache_critical(%struct.peak_canfd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %3, align 8
  %7 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %4, align 8
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %12 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %16 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %20 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_4__* %21, %struct.can_frame** %5)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %74

32:                                               ; preds = %1
  %33 = load i32, i32* @CAN_ERR_CRTL, align 4
  %34 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %39 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %40 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %44 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %48 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32 %46, i32* %50, align 4
  %51 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %52 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  store i32 %54, i32* %58, align 4
  %59 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %60 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @netif_rx(%struct.sk_buff* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %32, %25
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_4__*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
