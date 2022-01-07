; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_STATE_BIT_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"failed to re-create rx queues,  error %d. Closing it.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to re-activate, error %d. Closing it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vmxnet3_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.vmxnet3_adapter* %8, %struct.vmxnet3_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %18, %2
  %13 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %12

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %26 = call i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter* %25)
  %27 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %28 = call i32 @vmxnet3_reset_dev(%struct.vmxnet3_adapter* %27)
  %29 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %30 = call i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter* %29)
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %32 = call i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter* %31)
  %33 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %34 = call i32 @vmxnet3_rq_create_all(%struct.vmxnet3_adapter* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %52

41:                                               ; preds = %24
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %43 = call i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %52

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %20
  br label %52

52:                                               ; preds = %51, %46, %37
  %53 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %61 = call i32 @vmxnet3_force_close(%struct.vmxnet3_adapter* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_reset_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_adjust_rx_ring_size(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_create_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vmxnet3_force_close(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
