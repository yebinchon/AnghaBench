; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.octeon_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Stopping device\0A\00", align 1
@LIQUIDIO_SWITCHDEV_CAP = common dso_local global i32 0, align 4
@CVM_DRV_NIC_APP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Device removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @liquidio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @liquidio_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.octeon_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.octeon_device* %5, %struct.octeon_device** %3, align 8
  %6 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @kthread_stop(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LIQUIDIO_SWITCHDEV_CAP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 (...) @lio_vf_rep_modexit()
  br label %35

35:                                               ; preds = %33, %25, %20
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CVM_DRV_NIC_APP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %48 = call i32 @liquidio_stop_nic_module(%struct.octeon_device* %47)
  br label %49

49:                                               ; preds = %46, %40, %35
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = call i32 @octeon_destroy_resources(%struct.octeon_device* %50)
  %52 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %58 = call i32 @octeon_free_device_mem(%struct.octeon_device* %57)
  ret void
}

declare dso_local %struct.octeon_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @lio_vf_rep_modexit(...) #1

declare dso_local i32 @liquidio_stop_nic_module(%struct.octeon_device*) #1

declare dso_local i32 @octeon_destroy_resources(%struct.octeon_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @octeon_free_device_mem(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
