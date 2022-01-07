; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/common/extr_cavium_ptp.c_cavium_ptp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/common/extr_cavium_ptp.c_cavium_ptp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cavium_ptp = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_CAVIUM = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_CAVIUM_PTP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cavium_ptp* @cavium_ptp_get() #0 {
  %1 = alloca %struct.cavium_ptp*, align 8
  %2 = alloca %struct.cavium_ptp*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = load i32, i32* @PCI_VENDOR_ID_CAVIUM, align 4
  %5 = load i32, i32* @PCI_DEVICE_ID_CAVIUM_PTP, align 4
  %6 = call %struct.pci_dev* @pci_get_device(i32 %4, i32 %5, i32* null)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cavium_ptp* @ERR_PTR(i32 %11)
  store %struct.cavium_ptp* %12, %struct.cavium_ptp** %1, align 8
  br label %31

13:                                               ; preds = %0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call %struct.cavium_ptp* @pci_get_drvdata(%struct.pci_dev* %14)
  store %struct.cavium_ptp* %15, %struct.cavium_ptp** %2, align 8
  %16 = load %struct.cavium_ptp*, %struct.cavium_ptp** %2, align 8
  %17 = icmp ne %struct.cavium_ptp* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.cavium_ptp* @ERR_PTR(i32 %20)
  store %struct.cavium_ptp* %21, %struct.cavium_ptp** %2, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.cavium_ptp*, %struct.cavium_ptp** %2, align 8
  %24 = call i64 @IS_ERR(%struct.cavium_ptp* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @pci_dev_put(%struct.pci_dev* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load %struct.cavium_ptp*, %struct.cavium_ptp** %2, align 8
  store %struct.cavium_ptp* %30, %struct.cavium_ptp** %1, align 8
  br label %31

31:                                               ; preds = %29, %9
  %32 = load %struct.cavium_ptp*, %struct.cavium_ptp** %1, align 8
  ret %struct.cavium_ptp* %32
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local %struct.cavium_ptp* @ERR_PTR(i32) #1

declare dso_local %struct.cavium_ptp* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.cavium_ptp*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
