; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_igu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_igu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@IGU_REG_SB_INT_BEFORE_MASK_LSB = common dso_local global i64 0, align 8
@IGU_REG_SB_INT_BEFORE_MASK_MSB = common dso_local global i64 0, align 8
@IGU_REG_SB_MASK_LSB = common dso_local global i64 0, align 8
@IGU_REG_SB_MASK_MSB = common dso_local global i64 0, align 8
@IGU_REG_PBA_STATUS_LSB = common dso_local global i64 0, align 8
@IGU_REG_PBA_STATUS_MSB = common dso_local global i64 0, align 8
@IGU_REG_VF_CONFIGURATION = common dso_local global i64 0, align 8
@IGU_VF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@IGU_VF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_VF_CONF_PARENT_MASK = common dso_local global i32 0, align 4
@IGU_VF_CONF_PARENT_SHIFT = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"value in IGU_REG_VF_CONFIGURATION of vf %d after write is 0x%08x\0A\00", align 1
@IGU_REG_PROD_CONS_MEMORY = common dso_local global i64 0, align 8
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_igu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_igu_reset(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @HW_VF_HANDLE(%struct.bnx2x* %9, i32 %12)
  %14 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %8, i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i64, i64* @IGU_REG_SB_INT_BEFORE_MASK_LSB, align 8
  %17 = call i32 @REG_WR(%struct.bnx2x* %15, i64 %16, i32 0)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i64, i64* @IGU_REG_SB_INT_BEFORE_MASK_MSB, align 8
  %20 = call i32 @REG_WR(%struct.bnx2x* %18, i64 %19, i32 0)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i64, i64* @IGU_REG_SB_MASK_LSB, align 8
  %23 = call i32 @REG_WR(%struct.bnx2x* %21, i64 %22, i32 0)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load i64, i64* @IGU_REG_SB_MASK_MSB, align 8
  %26 = call i32 @REG_WR(%struct.bnx2x* %24, i64 %25, i32 0)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = load i64, i64* @IGU_REG_PBA_STATUS_LSB, align 8
  %29 = call i32 @REG_WR(%struct.bnx2x* %27, i64 %28, i32 0)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i64, i64* @IGU_REG_PBA_STATUS_MSB, align 8
  %32 = call i32 @REG_WR(%struct.bnx2x* %30, i64 %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load i64, i64* @IGU_REG_VF_CONFIGURATION, align 8
  %35 = call i32 @REG_RD(%struct.bnx2x* %33, i64 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @IGU_VF_CONF_FUNC_EN, align 4
  %37 = load i32, i32* @IGU_VF_CONF_MSI_MSIX_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @IGU_VF_CONF_PARENT_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %45)
  %47 = ashr i32 %46, 1
  %48 = load i32, i32* @IGU_VF_CONF_PARENT_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i64, i64* @IGU_REG_VF_CONFIGURATION, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @REG_WR(%struct.bnx2x* %52, i64 %53, i32 %54)
  %56 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DP(i32 %56, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %63)
  %65 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %62, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %94, %2
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %69 = call i32 @vf_sb_count(%struct.bnx2x_virtf* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @vf_igu_sb(%struct.bnx2x_virtf* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = load i64, i64* @IGU_REG_PROD_CONS_MEMORY, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @REG_WR(%struct.bnx2x* %75, i64 %80, i32 0)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %84 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @bnx2x_igu_clear_sb_gen(%struct.bnx2x* %82, i32 %85, i32 %86, i32 0)
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @USTORM_ID, align 4
  %92 = load i32, i32* @IGU_INT_DISABLE, align 4
  %93 = call i32 @bnx2x_vf_igu_ack_sb(%struct.bnx2x* %88, %struct.bnx2x_virtf* %89, i32 %90, i32 %91, i32 0, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %71
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %66

97:                                               ; preds = %66
  ret void
}

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @HW_VF_HANDLE(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @vf_sb_count(%struct.bnx2x_virtf*) #1

declare dso_local i32 @vf_igu_sb(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_igu_clear_sb_gen(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_vf_igu_ack_sb(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
