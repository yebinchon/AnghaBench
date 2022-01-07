; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_occ_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_occ_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_sb_pool_des* }
%struct.mlxsw_sp_sb_pool_des = type { i64, i32 }
%struct.list_head = type { i32 }

@MLXSW_REG_SBPM_LEN = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i64 0, align 8
@sbpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i64, %struct.list_head*)* @mlxsw_sp_sb_pm_occ_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_pm_occ_clear(%struct.mlxsw_sp* %0, i32 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %18, i64 %19
  store %struct.mlxsw_sp_sb_pool_des* %20, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %21 = load i32, i32* @MLXSW_REG_SBPM_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MLXSW_PORT_CPU_PORT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLXSW_REG_SBXX_DIR_INGRESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %51

35:                                               ; preds = %28, %4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mlxsw_reg_sbpm_pack(i8* %24, i32 %36, i32 %39, i64 %42, i32 1, i32 0, i32 0)
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @sbpm, align 4
  %48 = call i32 @MLXSW_REG(i32 %47)
  %49 = load %struct.list_head*, %struct.list_head** %9, align 8
  %50 = call i32 @mlxsw_reg_trans_query(i32 %46, i32 %48, i8* %24, %struct.list_head* %49, i32* null, i32 0)
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %35, %34
  %52 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sbpm_pack(i8*, i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_trans_query(i32, i32, i8*, %struct.list_head*, i32*, i32) #2

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
