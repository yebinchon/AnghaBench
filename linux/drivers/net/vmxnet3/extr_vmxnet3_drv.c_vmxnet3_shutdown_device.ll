; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@VMXNET3_STATE_BIT_RESETTING = common dso_local global i32 0, align 4
@VMXNET3_STATE_BIT_QUIESCED = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_QUIESCE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vmxnet3_shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_shutdown_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.vmxnet3_adapter* %9, %struct.vmxnet3_adapter** %4, align 8
  br label %10

10:                                               ; preds = %16, %1
  %11 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %12 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %12, i32 0, i32 0
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* @VMXNET3_STATE_BIT_QUIESCED, align 4
  %20 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %20, i32 0, i32 0
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %26 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  br label %48

29:                                               ; preds = %18
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %35 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %36 = load i32, i32* @VMXNET3_CMD_QUIESCE_DEV, align 4
  %37 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %34, i32 %35, i32 %36)
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %43 = call i32 @vmxnet3_disable_all_intrs(%struct.vmxnet3_adapter* %42)
  %44 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %45 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmxnet3_disable_all_intrs(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
