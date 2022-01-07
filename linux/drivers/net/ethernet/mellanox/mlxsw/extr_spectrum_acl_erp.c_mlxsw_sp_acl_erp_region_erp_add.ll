; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_erp_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_erp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_acl_tcam_region* }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_erp = type { i32 }

@MLXSW_REG_PERERP_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ERP_MAX_PER_REGION = common dso_local global i32 0, align 4
@pererp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*)* @mlxsw_sp_acl_erp_region_erp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_region_erp_add(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  store %struct.mlxsw_sp_acl_erp* %1, %struct.mlxsw_sp_acl_erp** %4, align 8
  %10 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %13, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %14, %struct.mlxsw_sp_acl_tcam_region** %5, align 8
  %15 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %18, align 8
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %6, align 8
  %20 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @MLXSW_REG_PERERP_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, %struct.mlxsw_sp_acl_tcam_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlxsw_reg_pererp_pack(i8* %28, i32 %31, i32 %32, i32 1, i32 0, i32 %35, i32 0)
  %37 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLXSW_SP_ACL_ERP_MAX_PER_REGION, align 4
  %41 = call i32 @mlxsw_reg_pererp_erp_vector_pack(i8* %28, i32 %39, i32 %40)
  %42 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlxsw_reg_pererp_erpt_vector_set(i8* %28, i32 %44, i32 1)
  %46 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @pererp, align 4
  %50 = call i32 @MLXSW_REG(i32 %49)
  %51 = call i32 @mlxsw_reg_write(i32 %48, i32 %50, i8* %28)
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_pererp_pack(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_pererp_erp_vector_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_pererp_erpt_vector_set(i8*, i32, i32) #2

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
