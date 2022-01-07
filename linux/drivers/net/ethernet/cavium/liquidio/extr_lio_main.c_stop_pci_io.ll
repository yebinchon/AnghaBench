; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_stop_pci_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_stop_pci_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.octeon_device.0*, i32)* }
%struct.octeon_device.0 = type opaque

@OCT_DEV_IN_RESET = common dso_local global i32 0, align 4
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@LIO_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device state is now %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @stop_pci_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_pci_io(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %3 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %3, i32 0, i32 2
  %5 = load i32, i32* @OCT_DEV_IN_RESET, align 4
  %6 = call i32 @atomic_set(i32* %4, i32 %5)
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @pci_disable_device(%struct.TYPE_6__* %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %13, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %16 = bitcast %struct.octeon_device* %15 to %struct.octeon_device.0*
  %17 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %18 = call i32 %14(%struct.octeon_device.0* %16, i32 %17)
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = call i32 @pcierror_quiesce_device(%struct.octeon_device* %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.octeon_device* %26)
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LIO_FLAG_MSI_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @pci_disable_msi(%struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 2
  %46 = call i32 @lio_get_state_string(i32* %45)
  %47 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @cleanup_aer_uncorrect_error_status(%struct.TYPE_6__* %50)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @pcierror_quiesce_device(%struct.octeon_device*) #1

declare dso_local i32 @free_irq(i32, %struct.octeon_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @lio_get_state_string(i32*) #1

declare dso_local i32 @cleanup_aer_uncorrect_error_status(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
