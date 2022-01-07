; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_erp_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_erp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_erp = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@MLXSW_REG_PERPT_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_ACL_ERP_MAX_PER_REGION = common dso_local global i32 0, align 4
@perpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*)* @mlxsw_sp_acl_erp_table_erp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  store %struct.mlxsw_sp_acl_erp* %1, %struct.mlxsw_sp_acl_erp** %4, align 8
  %11 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %5, align 8
  %16 = load i32, i32* @MLXSW_REG_PERPT_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %21 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %22 = call i32 @mlxsw_sp_acl_erp_table_locate(%struct.mlxsw_sp_acl_erp_table* %20, %struct.mlxsw_sp_acl_erp* %21, i32* %9, i32* %10)
  %23 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlxsw_reg_perpt_pack(i8* %19, i32 %29, i32 %30, i32 %31, i32 %34, i32 0, i32 %37, i32 %40, i32 %44)
  %46 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MLXSW_SP_ACL_ERP_MAX_PER_REGION, align 4
  %50 = call i32 @mlxsw_reg_perpt_erp_vector_pack(i8* %19, i32 %48, i32 %49)
  %51 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mlxsw_reg_perpt_erp_vector_set(i8* %19, i32 %53, i32 1)
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @perpt, align 4
  %59 = call i32 @MLXSW_REG(i32 %58)
  %60 = call i32 @mlxsw_reg_write(i32 %57, i32 %59, i8* %19)
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_locate(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*, i32*, i32*) #2

declare dso_local i32 @mlxsw_reg_perpt_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_perpt_erp_vector_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_perpt_erp_vector_set(i8*, i32, i32) #2

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
