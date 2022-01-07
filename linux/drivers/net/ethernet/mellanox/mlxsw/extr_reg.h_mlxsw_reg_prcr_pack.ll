; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_prcr_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_prcr_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i8*, i32, i32)* @mlxsw_reg_prcr_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_prcr_pack(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @prcr, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @MLXSW_REG_ZERO(i32 %15, i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mlxsw_reg_prcr_op_set(i8* %18, i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mlxsw_reg_prcr_offset_set(i8* %21, i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @mlxsw_reg_prcr_size_set(i8* %24, i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @mlxsw_reg_prcr_tcam_region_info_memcpy_to(i8* %27, i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @mlxsw_reg_prcr_dest_offset_set(i8* %30, i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @mlxsw_reg_prcr_dest_tcam_region_info_memcpy_to(i8* %33, i8* %34)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_prcr_op_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_prcr_offset_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_prcr_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_prcr_tcam_region_info_memcpy_to(i8*, i8*) #1

declare dso_local i32 @mlxsw_reg_prcr_dest_offset_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_prcr_dest_tcam_region_info_memcpy_to(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
