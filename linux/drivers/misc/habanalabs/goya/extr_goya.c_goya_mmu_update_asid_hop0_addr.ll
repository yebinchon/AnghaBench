; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_update_asid_hop0_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_mmu_update_asid_hop0_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64 }

@GOYA_PLDM_MMU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@MMU_CONFIG_TIMEOUT_USEC = common dso_local global i32 0, align 4
@MMU_HOP0_PA43_12 = common dso_local global i32 0, align 4
@MMU_HOP0_PA43_12_SHIFT = common dso_local global i32 0, align 4
@MMU_HOP0_PA49_44 = common dso_local global i32 0, align 4
@MMU_HOP0_PA49_44_SHIFT = common dso_local global i32 0, align 4
@MMU_ASID_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Timeout during MMU hop0 config of asid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32, i32)* @goya_mmu_update_asid_hop0_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_mmu_update_asid_hop0_addr(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @GOYA_PLDM_MMU_TIMEOUT_USEC, align 4
  store i32 %16, i32* %9, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MMU_CONFIG_TIMEOUT_USEC, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* @MMU_HOP0_PA43_12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MMU_HOP0_PA43_12_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = call i32 @WREG32(i32 %20, i32 %23)
  %25 = load i32, i32* @MMU_HOP0_PA49_44, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MMU_HOP0_PA49_44_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = call i32 @WREG32(i32 %25, i32 %28)
  %30 = load i32, i32* @MMU_ASID_BUSY, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 -2147483648, %31
  %33 = call i32 @WREG32(i32 %30, i32 %32)
  %34 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %35 = load i32, i32* @MMU_ASID_BUSY, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -2147483648
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hl_poll_timeout(%struct.hl_device* %34, i32 %35, i32 %36, i32 %41, i32 1000, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %19
  %47 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
