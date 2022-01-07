; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_invalidate_cache_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_invalidate_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i64, %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@GOYA_PLDM_MMU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@MMU_CONFIG_TIMEOUT_USEC = common dso_local global i32 0, align 4
@mmSTLB_CACHE_INV = common dso_local global i32 0, align 4
@STLB_CACHE_INV_PRODUCER_INDEX_MASK = common dso_local global i32 0, align 4
@STLB_CACHE_INV_INDEX_MASK_MASK = common dso_local global i32 0, align 4
@mmSTLB_INV_CONSUMER_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timeout when waiting for MMU cache invalidation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32, i32, i32, i32)* @goya_mmu_invalidate_cache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_mmu_invalidate_cache_range(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.goya_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 3
  %19 = load %struct.goya_device*, %struct.goya_device** %18, align 8
  store %struct.goya_device* %19, %struct.goya_device** %11, align 8
  %20 = load %struct.goya_device*, %struct.goya_device** %11, align 8
  %21 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HW_CAP_MMU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %77

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %77

31:                                               ; preds = %27
  %32 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @GOYA_PLDM_MMU_TIMEOUT_USEC, align 4
  store i32 %37, i32* %13, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @MMU_CONFIG_TIMEOUT_USEC, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* @mmSTLB_CACHE_INV, align 4
  %45 = call i32 @RREG32(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @STLB_CACHE_INV_PRODUCER_INDEX_MASK, align 4
  %48 = and i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = and i32 %49, 255
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @mmSTLB_CACHE_INV, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @STLB_CACHE_INV_INDEX_MASK_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %15, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @WREG32(i32 %51, i32 %56)
  %58 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %59 = load i32, i32* @mmSTLB_INV_CONSUMER_INDEX, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @hl_poll_timeout(%struct.hl_device* %58, i32 %59, i32 %60, i32 %64, i32 1000, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %40
  %73 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_notice_ratelimited(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %26, %30, %72, %40
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_notice_ratelimited(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
