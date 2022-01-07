; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_update_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_update_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@BE_IF_FLAGS_ALL_PROMISCUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_update_queues(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i64 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_tx_lock_bh(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_carrier_off(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_tx_unlock_bh(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @be_close(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = call i32 @be_cancel_worker(%struct.be_adapter* %22)
  %24 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = call i32 @be_msix_disable(%struct.be_adapter* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = call i32 @be_clear_queues(%struct.be_adapter* %32)
  %34 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be_cmd_if_destroy(%struct.be_adapter* %34, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %86

43:                                               ; preds = %31
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = call i32 @msix_enabled(%struct.be_adapter* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = call i32 @be_msix_enable(%struct.be_adapter* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %57 = call i32 @be_if_create(%struct.be_adapter* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %86

62:                                               ; preds = %55
  %63 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %64 = call i32 @be_setup_queues(%struct.be_adapter* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %62
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = call i32 @be_schedule_worker(%struct.be_adapter* %70)
  %72 = load i32, i32* @BE_IF_FLAGS_ALL_PROMISCUOUS, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = call i64 @netif_running(%struct.net_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @be_open(%struct.net_device* %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %69
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %67, %60, %52, %41
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @be_close(%struct.net_device*) #1

declare dso_local i32 @be_cancel_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_disable(%struct.be_adapter*) #1

declare dso_local i32 @be_clear_queues(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_if_destroy(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @msix_enabled(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_enable(%struct.be_adapter*) #1

declare dso_local i32 @be_if_create(%struct.be_adapter*) #1

declare dso_local i32 @be_setup_queues(%struct.be_adapter*) #1

declare dso_local i32 @be_schedule_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
