; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_pg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_pg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_PBMC_LEN = common dso_local global i32 0, align 4
@pbmc = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32*, i32*)* @mlxsw_sp_port_pg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_pg_destroy(%struct.mlxsw_sp_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %16, align 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %8, align 8
  %18 = load i32, i32* @MLXSW_REG_PBMC_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlxsw_reg_pbmc_pack(i8* %21, i32 %24, i32 0, i32 0)
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @pbmc, align 4
  %30 = call i32 @MLXSW_REG(i32 %29)
  %31 = call i32 @mlxsw_reg_query(i32 %28, i32 %30, i8* %21)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

36:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @mlxsw_sp_ets_has_pg(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @mlxsw_reg_pbmc_lossy_buffer_pack(i8* %21, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %51, %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %37

58:                                               ; preds = %37
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @pbmc, align 4
  %63 = call i32 @MLXSW_REG(i32 %62)
  %64 = call i32 @mlxsw_reg_write(i32 %61, i32 %63, i8* %21)
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %58, %34
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_pbmc_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_sp_ets_has_pg(i32*, i32) #2

declare dso_local i32 @mlxsw_reg_pbmc_lossy_buffer_pack(i8*, i32, i32) #2

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
