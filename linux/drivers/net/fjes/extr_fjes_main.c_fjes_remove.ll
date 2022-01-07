; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.fjes_adapter = type { i32, i64, i64, i32, i32, i32, i32, %struct.fjes_hw }
%struct.fjes_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fjes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fjes_adapter*, align 8
  %5 = alloca %struct.fjes_hw*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.net_device* @dev_get_drvdata(i32* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.fjes_adapter* %10, %struct.fjes_adapter** %4, align 8
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 7
  store %struct.fjes_hw* %12, %struct.fjes_hw** %5, align 8
  %13 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %14 = call i32 @fjes_dbg_adapter_exit(%struct.fjes_adapter* %13)
  %15 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %15, i32 0, i32 6
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %18, i32 0, i32 5
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %21, i32 0, i32 4
  %23 = call i32 @cancel_work_sync(i32* %22)
  %24 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %24, i32 0, i32 3
  %26 = call i32 @cancel_work_sync(i32* %25)
  %27 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @destroy_workqueue(i64 %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @destroy_workqueue(i64 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @unregister_netdev(%struct.net_device* %47)
  %49 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %50 = call i32 @fjes_hw_exit(%struct.fjes_hw* %49)
  %51 = load %struct.fjes_adapter*, %struct.fjes_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %51, i32 0, i32 0
  %53 = call i32 @netif_napi_del(i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @free_netdev(%struct.net_device* %54)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fjes_dbg_adapter_exit(%struct.fjes_adapter*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @fjes_hw_exit(%struct.fjes_hw*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
