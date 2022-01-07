; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_ptce3_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_ptce3_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptce3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* @mlxsw_reg_ptce3_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_ptce3_pack(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %27 = load i32, i32* @ptce3, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @MLXSW_REG_ZERO(i32 %27, i8* %28)
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @mlxsw_reg_ptce3_v_set(i8* %30, i32 %31)
  %33 = load i8*, i8** %14, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @mlxsw_reg_ptce3_op_set(i8* %33, i32 %34)
  %36 = load i8*, i8** %14, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @mlxsw_reg_ptce3_priority_set(i8* %36, i32 %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %18, align 8
  %41 = call i32 @mlxsw_reg_ptce3_tcam_region_info_memcpy_to(i8* %39, i8* %40)
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @mlxsw_reg_ptce3_flex2_key_blocks_memcpy_to(i8* %42, i8* %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @mlxsw_reg_ptce3_erp_id_set(i8* %45, i32 %46)
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @mlxsw_reg_ptce3_delta_start_set(i8* %48, i32 %49)
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %22, align 4
  %53 = call i32 @mlxsw_reg_ptce3_delta_mask_set(i8* %51, i32 %52)
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @mlxsw_reg_ptce3_delta_value_set(i8* %54, i32 %55)
  %57 = load i8*, i8** %14, align 8
  %58 = load i32, i32* %24, align 4
  %59 = call i32 @mlxsw_reg_ptce3_large_exists_set(i8* %57, i32 %58)
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %25, align 4
  %62 = call i32 @mlxsw_reg_ptce3_large_entry_key_id_set(i8* %60, i32 %61)
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %26, align 4
  %65 = call i32 @mlxsw_reg_ptce3_action_pointer_set(i8* %63, i32 %64)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_ptce3_v_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_op_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_priority_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_tcam_region_info_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_ptce3_flex2_key_blocks_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_ptce3_erp_id_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_delta_start_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_delta_mask_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_delta_value_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_large_exists_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_large_entry_key_id_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_ptce3_action_pointer_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
