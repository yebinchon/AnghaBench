; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_late_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_late_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to clear MMU page tables range %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set DRAM default page %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to get armcp info %d\0A\00", align 1
@mmMMU_LOG2_DDR_SIZE = common dso_local global i32 0, align 4
@ARMCP_PACKET_ENABLE_PCI_ACCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to enable PCI access from CPU %d\0A\00", align 1
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_INTS_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_late_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 1
  store %struct.asic_fixed_properties* %7, %struct.asic_fixed_properties** %4, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %9 = call i32 @goya_fetch_psoc_frequency(%struct.hl_device* %8)
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = call i32 @goya_mmu_clear_pgt_range(%struct.hl_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %23 = call i32 @goya_mmu_set_dram_default_page(%struct.hl_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %89

33:                                               ; preds = %21
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = call i32 @goya_mmu_add_mappings_for_device_cpu(%struct.hl_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %89

40:                                               ; preds = %33
  %41 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %42 = call i32 @goya_init_cpu_queues(%struct.hl_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %40
  %48 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %49 = call i32 @goya_test_cpu_queue(%struct.hl_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %89

54:                                               ; preds = %47
  %55 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %56 = call i32 @goya_armcp_info_get(%struct.hl_device* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %61 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %89

66:                                               ; preds = %54
  %67 = load i32, i32* @mmMMU_LOG2_DDR_SIZE, align 4
  %68 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %69 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ilog2(i32 %70)
  %72 = call i32 @WREG32(i32 %67, i32 %71)
  %73 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %74 = load i32, i32* @ARMCP_PACKET_ENABLE_PCI_ACCESS, align 4
  %75 = call i32 @hl_fw_send_pci_access_msg(%struct.hl_device* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %80 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %66
  %86 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %87 = load i32, i32* @GOYA_ASYNC_EVENT_ID_INTS_REGISTER, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %78, %59, %52, %45, %38, %26, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @goya_fetch_psoc_frequency(%struct.hl_device*) #1

declare dso_local i32 @goya_mmu_clear_pgt_range(%struct.hl_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @goya_mmu_set_dram_default_page(%struct.hl_device*) #1

declare dso_local i32 @goya_mmu_add_mappings_for_device_cpu(%struct.hl_device*) #1

declare dso_local i32 @goya_init_cpu_queues(%struct.hl_device*) #1

declare dso_local i32 @goya_test_cpu_queue(%struct.hl_device*) #1

declare dso_local i32 @goya_armcp_info_get(%struct.hl_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @hl_fw_send_pci_access_msg(%struct.hl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
