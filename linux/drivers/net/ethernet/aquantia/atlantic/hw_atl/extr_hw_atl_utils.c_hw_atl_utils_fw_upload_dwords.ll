; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_upload_dwords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_upload_dwords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@hw_atl_sem_ram_get = common dso_local global i32 0, align 4
@REVISION_B1 = common dso_local global i32 0, align 4
@hw_atl_scrpad12_get = common dso_local global i32 0, align 4
@hw_atl_utils_mif_cmd_get = common dso_local global i32 0, align 4
@HW_ATL_FW_SM_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32, i32*, i32)* @hw_atl_utils_fw_upload_dwords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_utils_fw_upload_dwords(%struct.aq_hw_s* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aq_hw_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @hw_atl_sem_ram_get, align 4
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @readx_poll_timeout_atomic(i32 %13, %struct.aq_hw_s* %14, i32 %15, i32 %18, i32 10, i32 100000)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %94

23:                                               ; preds = %4
  %24 = load i32, i32* @REVISION_B1, align 4
  %25 = call i64 @IS_CHIP_FEATURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %33, i32 808, i32 %38)
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul i32 %41, 4
  %43 = and i32 65535, %42
  %44 = or i32 -2147483648, %43
  %45 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %40, i32 812, i32 %44)
  %46 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %47 = call i32 @hw_atl_mcp_up_force_intr_set(%struct.aq_hw_s* %46, i32 1)
  %48 = load i32, i32* @hw_atl_scrpad12_get, align 4
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, -268435456
  %53 = icmp ne i32 %52, -2147483648
  %54 = zext i1 %53 to i32
  %55 = call i32 @readx_poll_timeout_atomic(i32 %48, %struct.aq_hw_s* %49, i32 %50, i32 %54, i32 10, i32 10000)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %28

59:                                               ; preds = %28
  br label %90

60:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %61, i32 520, i32 %62)
  br label %64

64:                                               ; preds = %86, %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %69, i32 524, i32 %74)
  %76 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %77 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %76, i32 512, i32 49152)
  %78 = load i32, i32* @hw_atl_utils_mif_cmd_get, align 4
  %79 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @readx_poll_timeout_atomic(i32 %78, %struct.aq_hw_s* %79, i32 %80, i32 %84, i32 1000, i32 10000)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %64

89:                                               ; preds = %64
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.aq_hw_s*, %struct.aq_hw_s** %5, align 8
  %92 = load i32, i32* @HW_ATL_FW_SM_RAM, align 4
  %93 = call i32 @hw_atl_reg_glb_cpu_sem_set(%struct.aq_hw_s* %91, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %90, %22
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_CHIP_FEATURE(i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_mcp_up_force_intr_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_reg_glb_cpu_sem_set(%struct.aq_hw_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
