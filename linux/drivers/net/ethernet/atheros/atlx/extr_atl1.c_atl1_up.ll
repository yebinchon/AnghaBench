; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_3__*, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to enable MSI: %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@atl1_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_adapter*)* @atl1_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_up(%struct.atl1_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %3, align 8
  %7 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @atlx_set_multi(%struct.net_device* %10)
  %12 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %13 = call i32 @atl1_init_ring_ptrs(%struct.atl1_adapter* %12)
  %14 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %15 = call i32 @atlx_restore_vlan(%struct.atl1_adapter* %14)
  %16 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %17 = call i32 @atl1_alloc_rx_buffers(%struct.atl1_adapter* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %92

27:                                               ; preds = %1
  %28 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %29 = call i32 @atl1_configure(%struct.atl1_adapter* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %84

35:                                               ; preds = %27
  %36 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @pci_enable_msi(%struct.TYPE_3__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %44 = call i64 @netif_msg_ifup(%struct.atl1_adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_info(i32* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %35
  %58 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @atl1_intr, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @request_irq(i32 %62, i32 %63, i32 %64, i32 %67, %struct.net_device* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %75, i32 0, i32 1
  %77 = call i32 @napi_enable(i32* %76)
  %78 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %79 = call i32 @atlx_irq_enable(%struct.atl1_adapter* %78)
  %80 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %81 = call i32 @atl1_check_link(%struct.atl1_adapter* %80)
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @netif_start_queue(%struct.net_device* %82)
  store i32 0, i32* %2, align 4
  br label %92

84:                                               ; preds = %73, %32
  %85 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @pci_disable_msi(%struct.TYPE_3__* %87)
  %89 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %90 = call i32 @atl1_clean_rx_ring(%struct.atl1_adapter* %89)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %74, %24
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @atlx_set_multi(%struct.net_device*) #1

declare dso_local i32 @atl1_init_ring_ptrs(%struct.atl1_adapter*) #1

declare dso_local i32 @atlx_restore_vlan(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_alloc_rx_buffers(%struct.atl1_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1_configure(%struct.atl1_adapter*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i64 @netif_msg_ifup(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @atlx_irq_enable(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_check_link(%struct.atl1_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @atl1_clean_rx_ring(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
