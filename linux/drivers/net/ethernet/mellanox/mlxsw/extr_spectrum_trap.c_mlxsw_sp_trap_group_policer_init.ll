; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_group_policer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_group_policer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink_trap_group = type { i32 }

@MLXSW_REG_QPCR_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_DISCARD_POLICER_ID = common dso_local global i32 0, align 4
@MLXSW_REG_QPCR_IR_UNITS_M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@qpcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.devlink_trap_group*)* @mlxsw_sp_trap_group_policer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_trap_group_policer_init(%struct.mlxsw_sp* %0, %struct.devlink_trap_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.devlink_trap_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.devlink_trap_group* %1, %struct.devlink_trap_group** %5, align 8
  %14 = load i32, i32* @MLXSW_REG_QPCR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %19 = getelementptr inbounds %struct.devlink_trap_group, %struct.devlink_trap_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %24 [
    i32 128, label %21
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @MLXSW_SP_DISCARD_POLICER_ID, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MLXSW_REG_QPCR_IR_UNITS_M, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 10240, i32* %12, align 4
  store i32 7, i32* %10, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %40

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @mlxsw_reg_qpcr_pack(i8* %17, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @qpcr, align 4
  %38 = call i32 @MLXSW_REG(i32 %37)
  %39 = call i32 @mlxsw_reg_write(i32 %36, i32 %38, i8* %17)
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_qpcr_pack(i8*, i32, i32, i32, i32, i32) #2

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
