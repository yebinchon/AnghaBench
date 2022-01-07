; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_invalidate_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_invalidate_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i64, %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@GOYA_PLDM_MMU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@MMU_CONFIG_TIMEOUT_USEC = common dso_local global i32 0, align 4
@mmSTLB_INV_ALL_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timeout when waiting for MMU cache invalidation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_mmu_invalidate_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_mmu_invalidate_cache(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.goya_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 3
  %11 = load %struct.goya_device*, %struct.goya_device** %10, align 8
  store %struct.goya_device* %11, %struct.goya_device** %5, align 8
  %12 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %13 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HW_CAP_MMU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %57

23:                                               ; preds = %19
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @GOYA_PLDM_MMU_TIMEOUT_USEC, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @MMU_CONFIG_TIMEOUT_USEC, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* @mmSTLB_INV_ALL_START, align 4
  %37 = call i32 @WREG32(i32 %36, i32 1)
  %38 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %39 = load i32, i32* @mmSTLB_INV_ALL_START, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @hl_poll_timeout(%struct.hl_device* %38, i32 %39, i32 %40, i32 %44, i32 1000, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_notice_ratelimited(i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %18, %22, %52, %32
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

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
