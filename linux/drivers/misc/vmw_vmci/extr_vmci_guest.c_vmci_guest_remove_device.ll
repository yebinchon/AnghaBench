; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_guest_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_guest_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vmci_guest_device = type { i32, i32, i64, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Removing device\0A\00", align 1
@vmci_num_guest_devices = common dso_local global i32 0, align 4
@ctx_update_sub_id = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to unsubscribe from event (type=%d) with subscriber (ID=0x%x): %d\0A\00", align 1
@VMCI_EVENT_CTX_ID_UPDATE = common dso_local global i32 0, align 4
@vmci_dev_spinlock = common dso_local global i32 0, align 4
@vmci_dev_g = common dso_local global i32* null, align 8
@vmci_pdev = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Resetting vmci device\0A\00", align 1
@VMCI_CONTROL_RESET = common dso_local global i32 0, align 4
@VMCI_CONTROL_ADDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vmci_guest_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmci_guest_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vmci_guest_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.vmci_guest_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.vmci_guest_device* %6, %struct.vmci_guest_device** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @atomic_dec(i32* @vmci_num_guest_devices)
  %11 = call i32 (...) @vmci_qp_guest_endpoints_exit()
  %12 = load i32, i32* @ctx_update_sub_id, align 4
  %13 = call i32 @vmci_event_unsubscribe(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VMCI_SUCCESS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @VMCI_EVENT_CTX_ID_UPDATE, align 4
  %21 = load i32, i32* @ctx_update_sub_id, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = call i32 @spin_lock_irq(i32* @vmci_dev_spinlock)
  store i32* null, i32** @vmci_dev_g, align 8
  store i32* null, i32** @vmci_pdev, align 8
  %26 = call i32 @spin_unlock_irq(i32* @vmci_dev_spinlock)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @VMCI_CONTROL_RESET, align 4
  %31 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %32 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VMCI_CONTROL_ADDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %38 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i32 @pci_irq_vector(%struct.pci_dev* %42, i32 1)
  %44 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.vmci_guest_device* %44)
  br label %46

46:                                               ; preds = %41, %24
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_irq_vector(%struct.pci_dev* %47, i32 0)
  %49 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.vmci_guest_device* %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %51)
  %53 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %54 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %53, i32 0, i32 4
  %55 = call i32 @tasklet_kill(i32* %54)
  %56 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %57 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %56, i32 0, i32 3
  %58 = call i32 @tasklet_kill(i32* %57)
  %59 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %60 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %46
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %68 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %71 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dma_free_coherent(i32* %65, i32 %66, i64 %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %46
  %75 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %3, align 8
  %76 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @vfree(i32 %77)
  ret void
}

declare dso_local %struct.vmci_guest_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @vmci_qp_guest_endpoints_exit(...) #1

declare dso_local i32 @vmci_event_unsubscribe(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.vmci_guest_device*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
