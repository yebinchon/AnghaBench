; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_adj_index_mass_update_vr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_adj_index_mass_update_vr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_RALEU_LEN = common dso_local global i32 0, align 4
@raleu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*, i32, i32, i32, i32)* @mlxsw_sp_adj_index_mass_update_vr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_adj_index_mass_update_vr(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_fib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_fib** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @MLXSW_REG_RALEU_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %13, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %14, align 8
  %19 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %8, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @mlxsw_reg_raleu_pack(i8* %18, i32 %22, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @raleu, align 4
  %37 = call i32 @MLXSW_REG(i32 %36)
  %38 = call i32 @mlxsw_reg_write(i32 %35, i32 %37, i8* %18)
  %39 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_raleu_pack(i8*, i32, i32, i32, i32, i32, i32) #2

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
