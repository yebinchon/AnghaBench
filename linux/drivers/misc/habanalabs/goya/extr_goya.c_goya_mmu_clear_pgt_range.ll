; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_clear_pgt_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_clear_pgt_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.goya_device*, %struct.asic_fixed_properties }
%struct.goya_device = type { i32 }
%struct.asic_fixed_properties = type { i64, i32 }

@MMU_DRAM_DEFAULT_PAGE_SIZE = common dso_local global i64 0, align 8
@MMU_CACHE_MNG_SIZE = common dso_local global i64 0, align 8
@HW_CAP_MMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_mmu_clear_pgt_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_mmu_clear_pgt_range(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.asic_fixed_properties*, align 8
  %5 = alloca %struct.goya_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 1
  store %struct.asic_fixed_properties* %9, %struct.asic_fixed_properties** %4, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 0
  %12 = load %struct.goya_device*, %struct.goya_device** %11, align 8
  store %struct.goya_device* %12, %struct.goya_device** %5, align 8
  %13 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %14 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %4, align 8
  %17 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMU_DRAM_DEFAULT_PAGE_SIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @MMU_CACHE_MNG_SIZE, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %24 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HW_CAP_MMU, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @goya_memset_device_memory(%struct.hl_device* %31, i32 %32, i64 %33, i32 0, i32 1)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @goya_memset_device_memory(%struct.hl_device*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
