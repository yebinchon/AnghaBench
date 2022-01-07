; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_print_mmu_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_print_mmu_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_MMU = common dso_local global i32 0, align 4
@mmMMU_PAGE_ERROR_CAPTURE = common dso_local global i32 0, align 4
@MMU_PAGE_ERROR_CAPTURE_ENTRY_VALID_MASK = common dso_local global i32 0, align 4
@MMU_PAGE_ERROR_CAPTURE_VA_49_32_MASK = common dso_local global i32 0, align 4
@mmMMU_PAGE_ERROR_CAPTURE_VA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MMU page fault on va 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_print_mmu_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_print_mmu_error_info(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 1
  %8 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  store %struct.goya_device* %8, %struct.goya_device** %3, align 8
  %9 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %10 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HW_CAP_MMU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @mmMMU_PAGE_ERROR_CAPTURE, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MMU_PAGE_ERROR_CAPTURE_ENTRY_VALID_MASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MMU_PAGE_ERROR_CAPTURE_VA_49_32_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @mmMMU_PAGE_ERROR_CAPTURE_VA, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @mmMMU_PAGE_ERROR_CAPTURE, align 4
  %39 = call i32 @WREG32(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %15, %23, %16
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
