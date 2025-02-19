; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_acl_tcam_region* }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }

@MLXSW_REG_PERERP_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ERP_MAX_PER_REGION = common dso_local global i32 0, align 4
@pererp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_table*, i32)* @mlxsw_sp_acl_erp_table_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_table_enable(%struct.mlxsw_sp_acl_erp_table* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %12, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %13, %struct.mlxsw_sp_acl_tcam_region** %5, align 8
  %14 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  store %struct.mlxsw_sp* %18, %struct.mlxsw_sp** %6, align 8
  %19 = load i32, i32* @MLXSW_REG_PERERP_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlxsw_reg_pererp_pack(i8* %22, i32 %25, i32 %26, i32 1, i32 0, i32 %29, i32 0)
  %31 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLXSW_SP_ACL_ERP_MAX_PER_REGION, align 4
  %35 = call i32 @mlxsw_reg_pererp_erp_vector_pack(i8* %22, i32 %33, i32 %34)
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @pererp, align 4
  %40 = call i32 @MLXSW_REG(i32 %39)
  %41 = call i32 @mlxsw_reg_write(i32 %38, i32 %40, i8* %22)
  %42 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_pererp_pack(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_pererp_erp_vector_pack(i8*, i32, i32) #2

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
