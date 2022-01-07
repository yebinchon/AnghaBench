; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fjes_adapter = type { i32, i32, i64, i32, i32, %struct.fjes_hw, i32 }
%struct.fjes_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EP_PARTNER_SHARED = common dso_local global i64 0, align 8
@FJES_RX_POLL_WORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fjes_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fjes_adapter*, align 8
  %4 = alloca %struct.fjes_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.fjes_adapter* %8, %struct.fjes_adapter** %3, align 8
  %9 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %9, i32 0, i32 5
  store %struct.fjes_hw* %10, %struct.fjes_hw** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_carrier_off(%struct.net_device* %13)
  %15 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %16 = call i32 @fjes_hw_raise_epstop(%struct.fjes_hw* %15)
  %17 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %17, i32 0, i32 6
  %19 = call i32 @napi_disable(i32* %18)
  %20 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %21 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %20, i32 0, i32 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %61, %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %27 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %33 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %61

37:                                               ; preds = %30
  %38 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @fjes_hw_get_partner_ep_status(%struct.fjes_hw* %38, i32 %39)
  %41 = load i64, i64* @EP_PARTNER_SHARED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* @FJES_RX_POLL_WORK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %45
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %43, %37
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %24

64:                                               ; preds = %24
  %65 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %66 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %65, i32 0, i32 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %70 = call i32 @fjes_free_irq(%struct.fjes_adapter* %69)
  %71 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %71, i32 0, i32 4
  %73 = call i32 @cancel_delayed_work_sync(i32* %72)
  %74 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %74, i32 0, i32 3
  %76 = call i32 @cancel_work_sync(i32* %75)
  %77 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %79, i32 0, i32 1
  %81 = call i32 @cancel_work_sync(i32* %80)
  %82 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %82, i32 0, i32 0
  %84 = call i32 @cancel_work_sync(i32* %83)
  %85 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %86 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %85, i32 0, i32 3
  %87 = call i32 @cancel_work_sync(i32* %86)
  %88 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %89 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %88, i32 0, i32 2
  %90 = call i32 @cancel_work_sync(i32* %89)
  %91 = load %struct.fjes_hw*, %struct.fjes_hw** %4, align 8
  %92 = call i32 @fjes_hw_wait_epstop(%struct.fjes_hw* %91)
  %93 = load %struct.fjes_adapter*, %struct.fjes_adapter** %3, align 8
  %94 = call i32 @fjes_free_resources(%struct.fjes_adapter* %93)
  ret i32 0
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @fjes_hw_raise_epstop(%struct.fjes_hw*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @fjes_hw_get_partner_ep_status(%struct.fjes_hw*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fjes_free_irq(%struct.fjes_adapter*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @fjes_hw_wait_epstop(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_free_resources(%struct.fjes_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
