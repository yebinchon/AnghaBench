; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_destroy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, %struct.ena_com_dev*, i32, %struct.net_device* }
%struct.ena_com_dev = type { i32 }
%struct.net_device = type { i32 }

@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32)* @ena_destroy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_destroy_device(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 5
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 3
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %12, align 8
  store %struct.ena_com_dev* %13, %struct.ena_com_dev** %6, align 8
  %14 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 1
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %88

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 4
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 1
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %37 = call i32 @ena_com_set_admin_running_state(%struct.ena_com_dev* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %40 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %46 = call i32 @ena_down(%struct.ena_adapter* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %49 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %49, i32 0, i32 1
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %57, i32 0, i32 3
  %59 = load %struct.ena_com_dev*, %struct.ena_com_dev** %58, align 8
  %60 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %53
  %65 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %66 = call i32 @ena_free_mgmnt_irq(%struct.ena_adapter* %65)
  %67 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %68 = call i32 @ena_disable_msix(%struct.ena_adapter* %67)
  %69 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %70 = call i32 @ena_com_abort_admin_commands(%struct.ena_com_dev* %69)
  %71 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %72 = call i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %71)
  %73 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %74 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %73)
  %75 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %76 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %75)
  %77 = load i32, i32* @ENA_REGS_RESET_NORMAL, align 4
  %78 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %81 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %85 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %85, i32 0, i32 1
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %64, %19
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ena_com_set_admin_running_state(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_down(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_free_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_abort_admin_commands(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
