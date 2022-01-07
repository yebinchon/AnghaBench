; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c___mlxsw_sp_trap_group_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c___mlxsw_sp_trap_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink_trap_group = type { i32 }

@MLXSW_REG_HTGT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS = common dso_local global i32 0, align 4
@MLXSW_SP_DISCARD_POLICER_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@htgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.devlink_trap_group*)* @__mlxsw_sp_trap_group_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_trap_group_init(%struct.mlxsw_sp* %0, %struct.devlink_trap_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.devlink_trap_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.devlink_trap_group* %1, %struct.devlink_trap_group** %5, align 8
  %13 = load i32, i32* @MLXSW_REG_HTGT_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %18 = getelementptr inbounds %struct.devlink_trap_group, %struct.devlink_trap_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 128, label %20
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @MLXSW_REG_HTGT_TRAP_GROUP_SP_L2_DISCARDS, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @MLXSW_SP_DISCARD_POLICER_ID, align 4
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %38

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @mlxsw_reg_htgt_pack(i8* %16, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @htgt, align 4
  %36 = call i32 @MLXSW_REG(i32 %35)
  %37 = call i32 @mlxsw_reg_write(i32 %34, i32 %36, i8* %16)
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_htgt_pack(i8*, i32, i32, i32, i32) #2

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
