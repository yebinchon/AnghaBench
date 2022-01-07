; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_bf = type { i32, i32* }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }

@MLXSW_REG_PEABFE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@peabfe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_bf_entry_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_bf* %1, %struct.mlxsw_sp_acl_atcam_region* %2, i32 %3, %struct.mlxsw_sp_acl_atcam_entry* %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_bf*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_bf* %1, %struct.mlxsw_sp_acl_bf** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %2, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mlxsw_sp_acl_atcam_entry* %4, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %15 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %19 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %20 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %21 = call i32 @mlxsw_sp_acl_bf_index_get(%struct.mlxsw_sp_acl_bf* %18, %struct.mlxsw_sp_acl_atcam_region* %19, %struct.mlxsw_sp_acl_atcam_entry* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @mlxsw_sp_acl_bf_rule_count_index_get(%struct.mlxsw_sp_acl_bf* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i64 @refcount_inc_not_zero(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %71

35:                                               ; preds = %5
  %36 = load i32, i32* @MLXSW_REG_PEABFE_LEN, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %14, align 4
  br label %71

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @mlxsw_reg_peabfe_pack(i8* %45)
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @mlxsw_reg_peabfe_rec_pack(i8* %47, i32 0, i32 1, i32 %48, i32 %49)
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @peabfe, align 4
  %55 = call i32 @MLXSW_REG(i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @mlxsw_reg_write(i32 %53, i32 %55, i8* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %71

63:                                               ; preds = %44
  %64 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @refcount_set(i32* %69, i32 1)
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %63, %62, %41, %34
  %72 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_index_get(%struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_rule_count_index_get(%struct.mlxsw_sp_acl_bf*, i32, i32) #1

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_peabfe_pack(i8*) #1

declare dso_local i32 @mlxsw_reg_peabfe_rec_pack(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
