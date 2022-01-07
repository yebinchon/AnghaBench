; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_occ_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_occ_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_sb_pool_des* }
%struct.mlxsw_sp_sb_pool_des = type { i64, i32 }
%struct.list_head = type { i32 }
%struct.mlxsw_sp_sb_pm = type { i32 }

@MLXSW_REG_SBPM_LEN = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i64 0, align 8
@sbpm = common dso_local global i32 0, align 4
@mlxsw_sp_sb_pm_occ_query_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i64, %struct.list_head*)* @mlxsw_sp_sb_pm_occ_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_pm_occ_query(%struct.mlxsw_sp* %0, i32 %1, i64 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlxsw_sp_sb_pm*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %19, i64 %20
  store %struct.mlxsw_sp_sb_pool_des* %21, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %22 = load i32, i32* @MLXSW_REG_SBPM_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MLXSW_PORT_CPU_PORT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MLXSW_REG_SBXX_DIR_INGRESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %59

36:                                               ; preds = %29, %4
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp* %37, i32 %38, i64 %39)
  store %struct.mlxsw_sp_sb_pm* %40, %struct.mlxsw_sp_sb_pm** %13, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %10, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mlxsw_reg_sbpm_pack(i8* %25, i32 %41, i32 %44, i64 %47, i32 0, i32 0, i32 0)
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @sbpm, align 4
  %53 = call i32 @MLXSW_REG(i32 %52)
  %54 = load %struct.list_head*, %struct.list_head** %9, align 8
  %55 = load i32, i32* @mlxsw_sp_sb_pm_occ_query_cb, align 4
  %56 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %13, align 8
  %57 = ptrtoint %struct.mlxsw_sp_sb_pm* %56 to i64
  %58 = call i32 @mlxsw_reg_trans_query(i32 %51, i32 %53, i8* %25, %struct.list_head* %54, i32 %55, i64 %57)
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %59

59:                                               ; preds = %36, %35
  %60 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp*, i32, i64) #2

declare dso_local i32 @mlxsw_reg_sbpm_pack(i8*, i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_trans_query(i32, i32, i8*, %struct.list_head*, i32, i64) #2

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
