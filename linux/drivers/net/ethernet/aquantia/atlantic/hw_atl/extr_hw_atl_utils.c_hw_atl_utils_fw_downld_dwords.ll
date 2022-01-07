; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_downld_dwords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_downld_dwords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW_SM_RAM = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@HW_ATL_MIF_ADDR = common dso_local global i32 0, align 4
@HW_ATL_MIF_CMD = common dso_local global i32 0, align 4
@REVISION_B1 = common dso_local global i32 0, align 4
@HW_ATL_MIF_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aq_hw_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @readx_poll_timeout_atomic(i32 (%struct.aq_hw_s*)* @hw_atl_sem_ram_get, %struct.aq_hw_s* %12, i32 %13, i32 %16, i32 1, i32 10000)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %22 = load i32, i32* @HW_ATL_FW_SM_RAM, align 4
  %23 = call i32 @hw_atl_reg_glb_cpu_sem_set(%struct.aq_hw_s* %21, i32 1, i32 %22)
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %25 = call i32 @hw_atl_sem_ram_get(%struct.aq_hw_s* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ETIME, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %85

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %34 = load i32, i32* @HW_ATL_MIF_ADDR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %73, %32
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %81

49:                                               ; preds = %47
  %50 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %51 = load i32, i32* @HW_ATL_MIF_CMD, align 4
  %52 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %50, i32 %51, i32 32768)
  %53 = load i32, i32* @REVISION_B1, align 4
  %54 = call i64 @IS_CHIP_FEATURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @readx_poll_timeout_atomic(i32 (%struct.aq_hw_s*)* @hw_atl_utils_mif_addr_get, %struct.aq_hw_s* %57, i32 %58, i32 %62, i32 1, i32 1000)
  store i32 %63, i32* %9, align 4
  br label %73

64:                                               ; preds = %49
  %65 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 256
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @readx_poll_timeout_atomic(i32 (%struct.aq_hw_s*)* @hw_atl_utils_mif_cmd_get, %struct.aq_hw_s* %65, i32 %66, i32 %71, i32 1, i32 1000)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %64, %56
  %74 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %75 = load i32, i32* @HW_ATL_MIF_VAL, align 4
  %76 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %74, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 4
  store i32 %80, i32* %6, align 4
  br label %39

81:                                               ; preds = %47
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %83 = load i32, i32* @HW_ATL_FW_SM_RAM, align 4
  %84 = call i32 @hw_atl_reg_glb_cpu_sem_set(%struct.aq_hw_s* %82, i32 1, i32 %83)
  br label %85

85:                                               ; preds = %81, %28
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @readx_poll_timeout_atomic(i32 (%struct.aq_hw_s*)*, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @hw_atl_sem_ram_get(%struct.aq_hw_s*) #1

declare dso_local i32 @hw_atl_reg_glb_cpu_sem_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i64 @IS_CHIP_FEATURE(i32) #1

declare dso_local i32 @hw_atl_utils_mif_addr_get(%struct.aq_hw_s*) #1

declare dso_local i32 @hw_atl_utils_mif_cmd_get(%struct.aq_hw_s*) #1

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
