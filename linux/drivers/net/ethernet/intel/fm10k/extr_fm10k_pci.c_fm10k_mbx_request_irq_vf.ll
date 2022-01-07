; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_request_irq_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_request_irq_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.net_device*, %struct.msix_entry* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.net_device = type { i32 }
%struct.msix_entry = type { i32, i32 }

@FM10K_MBX_VECTOR = common dso_local global i64 0, align 8
@FM10K_INT_MAP_TIMER0 = common dso_local global i32 0, align 4
@vf_mbx_data = common dso_local global i32 0, align 4
@fm10k_msix_mbx_vf = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"request_irq for msix_mbx failed: %d\0A\00", align 1
@FM10K_VFINT_MAP = common dso_local global i32 0, align 4
@FM10K_ITR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_mbx_request_irq_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_request_irq_vf(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.msix_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 2
  %11 = load %struct.msix_entry*, %struct.msix_entry** %10, align 8
  %12 = load i64, i64* @FM10K_MBX_VECTOR, align 8
  %13 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %11, i64 %12
  store %struct.msix_entry* %13, %struct.msix_entry** %4, align 8
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %18 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %17, i32 0, i32 0
  store %struct.fm10k_hw* %18, %struct.fm10k_hw** %6, align 8
  %19 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %20 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FM10K_INT_MAP_TIMER0, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %25 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %27, align 8
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %30 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %29, i32 0, i32 0
  %31 = load i32, i32* @vf_mbx_data, align 4
  %32 = call i32 %28(%struct.TYPE_4__* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %1
  %38 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %39 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @fm10k_msix_mbx_vf, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %46 = call i32 @request_irq(i32 %40, i32 %41, i32 0, i32 %44, %struct.fm10k_intfc* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %37
  %50 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %51 = load i32, i32* @probe, align 4
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @netif_err(%struct.fm10k_intfc* %50, i32 %51, %struct.net_device* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %37
  %57 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %58 = load i32, i32* @FM10K_VFINT_MAP, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %62 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %63 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FM10K_VFITR(i32 %64)
  %66 = load i32, i32* @FM10K_ITR_ENABLE, align 4
  %67 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %61, i32 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %49, %35
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.fm10k_intfc*) #1

declare dso_local i32 @netif_err(%struct.fm10k_intfc*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_VFITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
