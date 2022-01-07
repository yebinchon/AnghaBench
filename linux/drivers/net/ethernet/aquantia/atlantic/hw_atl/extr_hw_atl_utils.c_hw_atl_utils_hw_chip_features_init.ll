; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_hw_chip_features_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_hw_chip_features_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HAL_ATLANTIC_UTILS_CHIP_REVISION_A0 = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_MPI_AQ = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_MIPS = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_REVISION_B0 = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_TPO2 = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_RPF2 = common dso_local global i32 0, align 4
@HAL_ATLANTIC_UTILS_CHIP_REVISION_B1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_atl_utils_hw_chip_features_init(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %9 = call i32 @hw_atl_reg_glb_mif_id_get(%struct.aq_hw_s* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 15, %12
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_REVISION_A0, align 4
  %17 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MPI_AQ, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MIPS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = and i32 15, %24
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_REVISION_B0, align 4
  %29 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MPI_AQ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MIPS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_TPO2, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_RPF2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = and i32 15, %40
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_REVISION_B1, align 4
  %45 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MPI_AQ, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_MIPS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_TPO2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HAL_ATLANTIC_UTILS_CHIP_RPF2, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %43, %39
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  ret void
}

declare dso_local i32 @hw_atl_reg_glb_mif_id_get(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
