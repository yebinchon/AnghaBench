; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_op_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_op_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_rif* }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_REG_RALUE_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RALUE_TRAP_ACTION_NOP = common dso_local global i32 0, align 4
@MLXSW_REG_RALUE_TRAP_ACTION_TRAP = common dso_local global i32 0, align 4
@MLXSW_TRAP_ID_RTR_INGRESS0 = common dso_local global i32 0, align 4
@ralue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32)* @mlxsw_sp_fib_entry_op_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_entry_op_local(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %16, align 8
  store %struct.mlxsw_sp_rif* %17, %struct.mlxsw_sp_rif** %7, align 8
  %18 = load i32, i32* @MLXSW_REG_RALUE_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %23 = call i64 @mlxsw_sp_fib_entry_should_offload(%struct.mlxsw_sp_fib_entry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @MLXSW_REG_RALUE_TRAP_ACTION_NOP, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @MLXSW_REG_RALUE_TRAP_ACTION_TRAP, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @MLXSW_TRAP_ID_RTR_INGRESS0, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mlxsw_sp_fib_entry_ralue_pack(i8* %21, %struct.mlxsw_sp_fib_entry* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @mlxsw_reg_ralue_act_local_pack(i8* %21, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ralue, align 4
  %45 = call i32 @MLXSW_REG(i32 %44)
  %46 = call i32 @mlxsw_reg_write(i32 %43, i32 %45, i8* %21)
  %47 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mlxsw_sp_fib_entry_should_offload(%struct.mlxsw_sp_fib_entry*) #2

declare dso_local i32 @mlxsw_sp_fib_entry_ralue_pack(i8*, %struct.mlxsw_sp_fib_entry*, i32) #2

declare dso_local i32 @mlxsw_reg_ralue_act_local_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

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
