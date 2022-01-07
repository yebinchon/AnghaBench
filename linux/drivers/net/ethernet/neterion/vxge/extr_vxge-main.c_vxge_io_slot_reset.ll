; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.__vxge_hw_device = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vxgedev = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot re-enable device after reset\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@VXGE_LL_FULL_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @vxge_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.__vxge_hw_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vxgedev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.__vxge_hw_device* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.__vxge_hw_device* %8, %struct.__vxge_hw_device** %4, align 8
  %9 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %4, align 8
  %10 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %12)
  store %struct.vxgedev* %13, %struct.vxgedev** %6, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i64 @pci_enable_device(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %25 = load i32, i32* @VXGE_LL_FULL_RESET, align 4
  %26 = call i32 @do_vxge_reset(%struct.vxgedev* %24, i32 %25)
  %27 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.__vxge_hw_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @do_vxge_reset(%struct.vxgedev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
