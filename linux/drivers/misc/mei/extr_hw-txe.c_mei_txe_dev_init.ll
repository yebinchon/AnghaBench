; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.mei_txe_hw = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mei_txe_hw_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_device* @mei_txe_dev_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_txe_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mei_device* @devm_kzalloc(i32* %7, i32 8, i32 %8)
  store %struct.mei_device* %9, %struct.mei_device** %4, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = icmp ne %struct.mei_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.mei_device* null, %struct.mei_device** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @mei_device_init(%struct.mei_device* %14, i32* %16, i32* @mei_txe_hw_ops)
  %18 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %19 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %18)
  store %struct.mei_txe_hw* %19, %struct.mei_txe_hw** %5, align 8
  %20 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %21 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %20, i32 0, i32 0
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  store %struct.mei_device* %23, %struct.mei_device** %2, align 8
  br label %24

24:                                               ; preds = %13, %12
  %25 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  ret %struct.mei_device* %25
}

declare dso_local %struct.mei_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mei_device_init(%struct.mei_device*, i32*, i32*) #1

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
