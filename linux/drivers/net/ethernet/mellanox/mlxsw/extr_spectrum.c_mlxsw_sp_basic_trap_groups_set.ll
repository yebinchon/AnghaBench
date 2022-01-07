; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_basic_trap_groups_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_basic_trap_groups_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }

@MLXSW_REG_HTGT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_TRAP_GROUP_EMAD = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_INVALID_POLICER = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_TC = common dso_local global i32 0, align 4
@htgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp_basic_trap_groups_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_basic_trap_groups_set(%struct.mlxsw_core* %0) #0 {
  %2 = alloca %struct.mlxsw_core*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %2, align 8
  %5 = load i32, i32* @MLXSW_REG_HTGT_LEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @MLXSW_REG_HTGT_TRAP_GROUP_EMAD, align 4
  %10 = load i32, i32* @MLXSW_REG_HTGT_INVALID_POLICER, align 4
  %11 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_PRIORITY, align 4
  %12 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_TC, align 4
  %13 = call i32 @mlxsw_reg_htgt_pack(i8* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %2, align 8
  %15 = load i32, i32* @htgt, align 4
  %16 = call i32 @MLXSW_REG(i32 %15)
  %17 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %14, i32 %16, i8* %8)
  %18 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %18)
  ret i32 %17
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_htgt_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(%struct.mlxsw_core*, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
