; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_edit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RITR_LEN = common dso_local global i32 0, align 4
@ritr = common dso_local global i32 0, align 4
@MLXSW_REG_RITR_RIF_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i8*, i32)* @mlxsw_sp_rif_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_edit(%struct.mlxsw_sp* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @MLXSW_REG_RITR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mlxsw_reg_ritr_rif_pack(i8* %17, i32 %18)
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ritr, align 4
  %24 = call i32 @MLXSW_REG(i32 %23)
  %25 = call i32 @mlxsw_reg_query(i32 %22, i32 %24, i8* %17)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %43

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mlxsw_reg_ritr_mtu_set(i8* %17, i32 %31)
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @mlxsw_reg_ritr_if_mac_memcpy_to(i8* %17, i8* %33)
  %35 = load i32, i32* @MLXSW_REG_RITR_RIF_CREATE, align 4
  %36 = call i32 @mlxsw_reg_ritr_op_set(i8* %17, i32 %35)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ritr, align 4
  %41 = call i32 @MLXSW_REG(i32 %40)
  %42 = call i32 @mlxsw_reg_write(i32 %39, i32 %41, i8* %17)
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %30, %28
  %44 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ritr_rif_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ritr_mtu_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_ritr_if_mac_memcpy_to(i8*, i8*) #2

declare dso_local i32 @mlxsw_reg_ritr_op_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
