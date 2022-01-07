; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_stop_pci_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_stop_pci_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.TYPE_8__*, i32, i32*, i32*, i64, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.octeon_device.0*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.msix_entry = type { i32 }

@OCT_DEV_IN_RESET = common dso_local global i32 0, align 4
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device state is now %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @stop_pci_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_pci_io(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.msix_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 3
  %7 = load i32, i32* @OCT_DEV_IN_RESET, align 4
  %8 = call i32 @atomic_set(i32* %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_device_detach(i32 %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %31, align 8
  %33 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %34 = bitcast %struct.octeon_device* %33 to %struct.octeon_device.0*
  %35 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %36 = call i32 %32(%struct.octeon_device.0* %34, i32 %35)
  %37 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %38 = call i32 @pcierror_quiesce_device(%struct.octeon_device* %37)
  %39 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %28
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to %struct.msix_entry*
  store %struct.msix_entry* %47, %struct.msix_entry** %3, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %75, %43
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.msix_entry*, %struct.msix_entry** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @irq_set_affinity_hint(i32 %60, i32* null)
  %62 = load %struct.msix_entry*, %struct.msix_entry** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %62, i64 %64
  %66 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @free_irq(i32 %67, i32* %73)
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %48

78:                                               ; preds = %48
  %79 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i32 @pci_disable_msix(%struct.TYPE_8__* %81)
  %83 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %90 = call i32 @octeon_free_ioq_vector(%struct.octeon_device* %89)
  br label %91

91:                                               ; preds = %78, %28
  %92 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 3
  %98 = call i32 @lio_get_state_string(i32* %97)
  %99 = call i32 @dev_dbg(i32* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i32 @cleanup_aer_uncorrect_error_status(%struct.TYPE_8__* %102)
  %104 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @pci_disable_device(%struct.TYPE_8__* %106)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @pcierror_quiesce_device(%struct.octeon_device*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @octeon_free_ioq_vector(%struct.octeon_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @lio_get_state_string(i32*) #1

declare dso_local i32 @cleanup_aer_uncorrect_error_status(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
