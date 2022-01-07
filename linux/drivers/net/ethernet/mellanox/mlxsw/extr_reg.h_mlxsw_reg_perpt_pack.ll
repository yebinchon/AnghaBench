; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_perpt_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_perpt_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32, i32, i32, i8*)* @mlxsw_reg_perpt_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_perpt_pack(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %19 = load i32, i32* @perpt, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @MLXSW_REG_ZERO(i32 %19, i8* %20)
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @mlxsw_reg_perpt_erpt_bank_set(i8* %22, i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @mlxsw_reg_perpt_erpt_index_set(i8* %25, i32 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @mlxsw_reg_perpt_key_size_set(i8* %28, i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @mlxsw_reg_perpt_bf_bypass_set(i8* %31, i32 0)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @mlxsw_reg_perpt_erp_id_set(i8* %33, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @mlxsw_reg_perpt_erpt_base_bank_set(i8* %36, i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @mlxsw_reg_perpt_erpt_base_index_set(i8* %39, i32 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @mlxsw_reg_perpt_erp_index_in_vector_set(i8* %42, i32 %43)
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = call i32 @mlxsw_reg_perpt_mask_memcpy_to(i8* %45, i8* %46)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_perpt_erpt_bank_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_erpt_index_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_key_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_bf_bypass_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_erp_id_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_erpt_base_bank_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_erpt_base_index_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_erp_index_in_vector_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_perpt_mask_memcpy_to(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
