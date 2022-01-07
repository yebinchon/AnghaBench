; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_io_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_io_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2 = type { i32 }

@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@BNX2_FLAG_AER_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @bnx2_io_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2_io_slot_reset(%struct.pci_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.bnx2* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2* %11, %struct.bnx2** %5, align 8
  %12 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i64 @pci_enable_device(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_restore_state(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_save_state(%struct.pci_dev* %26)
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i64 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %33 = call i32 @bnx2_init_nic(%struct.bnx2* %32, i32 1)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i64 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %50 = call i32 @bnx2_napi_enable(%struct.bnx2* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @dev_close(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %48, %44, %40
  %54 = call i32 (...) @rtnl_unlock()
  %55 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %2, align 8
  br label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_napi_enable(%struct.bnx2*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
