; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_htgt_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_htgt_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@htgt = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_INVALID_POLICER = common dso_local global i64 0, align 8
@MLXSW_REG_HTGT_POLICER_DISABLE = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_POLICER_ENABLE = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_PATH_TYPE_LOCAL = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_TRAP_TO_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i64)* @mlxsw_reg_htgt_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_htgt_pack(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* @htgt, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @MLXSW_REG_ZERO(i32 %11, i8* %12)
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @MLXSW_REG_HTGT_INVALID_POLICER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @MLXSW_REG_HTGT_POLICER_DISABLE, align 4
  %20 = call i32 @mlxsw_reg_htgt_pide_set(i8* %18, i32 %19)
  br label %28

21:                                               ; preds = %5
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @MLXSW_REG_HTGT_POLICER_ENABLE, align 4
  %24 = call i32 @mlxsw_reg_htgt_pide_set(i8* %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @mlxsw_reg_htgt_pid_set(i8* %25, i64 %26)
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @MLXSW_REG_HTGT_PATH_TYPE_LOCAL, align 4
  %31 = call i32 @mlxsw_reg_htgt_type_set(i8* %29, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @mlxsw_reg_htgt_trap_group_set(i8* %32, i64 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @MLXSW_REG_HTGT_TRAP_TO_CPU, align 4
  %37 = call i32 @mlxsw_reg_htgt_mirror_action_set(i8* %35, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @mlxsw_reg_htgt_mirroring_agent_set(i8* %38, i32 0)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mlxsw_reg_htgt_priority_set(i8* %40, i64 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @mlxsw_reg_htgt_local_path_cpu_tclass_set(i8* %43, i64 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @mlxsw_reg_htgt_local_path_rdq_set(i8* %46, i64 %47)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_htgt_pide_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_htgt_pid_set(i8*, i64) #1

declare dso_local i32 @mlxsw_reg_htgt_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_htgt_trap_group_set(i8*, i64) #1

declare dso_local i32 @mlxsw_reg_htgt_mirror_action_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_htgt_mirroring_agent_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_htgt_priority_set(i8*, i64) #1

declare dso_local i32 @mlxsw_reg_htgt_local_path_cpu_tclass_set(i8*, i64) #1

declare dso_local i32 @mlxsw_reg_htgt_local_path_rdq_set(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
