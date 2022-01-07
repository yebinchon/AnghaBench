; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_restore_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_restore_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i32, i64, i32, %struct.pci_dev*, %struct.ena_com_dev* }
%struct.pci_dev = type { i32 }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_dev_get_features_ctx = type { i32 }

@ENA_FLAG_ONGOING_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can not initialize device\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Validation of device parameters failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Enable MSI-X failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create I/O queues\0A\00", align 1
@ENA_FLAG_DEVICE_RUNNING = common dso_local global i32 0, align 4
@ENA_FLAG_LINK_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Device reset completed successfully, Driver info: %s\0A\00", align 1
@version = common dso_local global i32 0, align 4
@ENA_REGS_RESET_DRIVER_INVALID_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Reset attempt failed. Can not reset the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_restore_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_restore_device(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev_get_features_ctx, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 7
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  store %struct.ena_com_dev* %11, %struct.ena_com_dev** %5, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 6
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 6
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = call i32 @ena_device_init(%struct.ena_com_dev* %19, %struct.pci_dev* %22, %struct.ena_com_dev_get_features_ctx* %4, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %118

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %35 = call i32 @ena_device_validate_params(%struct.ena_adapter* %34, %struct.ena_com_dev_get_features_ctx* %4)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %106

42:                                               ; preds = %30
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter* %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %106

54:                                               ; preds = %42
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %61 = call i32 @ena_up(%struct.ena_adapter* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %101

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %71, i32 0, i32 1
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %75 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %75, i32 0, i32 1
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load i32, i32* @ENA_FLAG_LINK_UP, align 4
  %79 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %79, i32 0, i32 1
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netif_carrier_on(i32 %86)
  br label %88

88:                                               ; preds = %83, %69
  %89 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %89, i32 0, i32 2
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i64, i64* @HZ, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @round_jiffies(i64 %93)
  %95 = call i32 @mod_timer(i32* %90, i32 %94)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i32, i32* @version, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %131

101:                                              ; preds = %64
  %102 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %103 = call i32 @ena_free_mgmnt_irq(%struct.ena_adapter* %102)
  %104 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %105 = call i32 @ena_disable_msix(%struct.ena_adapter* %104)
  br label %106

106:                                              ; preds = %101, %50, %38
  %107 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %108 = call i32 @ena_com_abort_admin_commands(%struct.ena_com_dev* %107)
  %109 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %110 = call i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %109)
  %111 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %112 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %111)
  %113 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %114 = load i32, i32* @ENA_REGS_RESET_DRIVER_INVALID_STATE, align 4
  %115 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %113, i32 %114)
  %116 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %117 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %116)
  br label %118

118:                                              ; preds = %106, %26
  %119 = load i32, i32* @ENA_FLAG_DEVICE_RUNNING, align 4
  %120 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %120, i32 0, i32 1
  %122 = call i32 @clear_bit(i32 %119, i32* %121)
  %123 = load i32, i32* @ENA_FLAG_ONGOING_RESET, align 4
  %124 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %124, i32 0, i32 1
  %126 = call i32 @clear_bit(i32 %123, i32* %125)
  %127 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %118, %88
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ena_device_init(%struct.ena_com_dev*, %struct.pci_dev*, %struct.ena_com_dev_get_features_ctx*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ena_device_validate_params(%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*) #1

declare dso_local i32 @ena_enable_msix_and_set_admin_interrupts(%struct.ena_adapter*, i32) #1

declare dso_local i32 @ena_up(%struct.ena_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @ena_free_mgmnt_irq(%struct.ena_adapter*) #1

declare dso_local i32 @ena_disable_msix(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_abort_admin_commands(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_wait_for_abort_completion(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
