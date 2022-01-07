; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_port_pb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_port_pb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp*, %struct.TYPE_2__ }
%struct.mlxsw_sp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_SP_PB_HEADROOM = common dso_local global i32 0, align 4
@MLXSW_PORT_MAX_MTU = common dso_local global i32 0, align 4
@MLXSW_REG_PBMC_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_PB_UNUSED = common dso_local global i32 0, align 4
@MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX = common dso_local global i32 0, align 4
@pbmc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_pb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_pb_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port*, align 8
  %3 = alloca [10 x i32], align 16
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %2, align 8
  %9 = bitcast [10 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %11 = load i32, i32* @MLXSW_SP_PB_HEADROOM, align 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %11, %15
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds i32, i32* %10, i64 1
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* @MLXSW_PORT_MAX_MTU, align 4
  store i32 %26, i32* %25, align 4
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 1
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %28, align 8
  store %struct.mlxsw_sp* %29, %struct.mlxsw_sp** %4, align 8
  %30 = load i32, i32* @MLXSW_REG_PBMC_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %5, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %6, align 8
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mlxsw_reg_pbmc_pack(i8* %33, i32 %36, i32 65535, i32 32767)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %1
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %44, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MLXSW_SP_PB_UNUSED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mlxsw_reg_pbmc_lossy_buffer_pack(i8* %33, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load i32, i32* @MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX, align 4
  %63 = call i32 @mlxsw_reg_pbmc_lossy_buffer_pack(i8* %33, i32 %62, i32 0)
  %64 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @pbmc, align 4
  %68 = call i32 @MLXSW_REG(i32 %67)
  %69 = call i32 @mlxsw_reg_write(i32 %66, i32 %68, i8* %33)
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_pbmc_pack(i8*, i32, i32, i32) #3

declare dso_local i32 @ARRAY_SIZE(i32*) #3

declare dso_local i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #3

declare dso_local i32 @mlxsw_reg_pbmc_lossy_buffer_pack(i8*, i32, i32) #3

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #3

declare dso_local i32 @MLXSW_REG(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
