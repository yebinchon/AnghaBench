; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_entry_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_bloom_filter.c_mlxsw_sp_acl_bf_entry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_bf = type { i32, i32* }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }

@MLXSW_REG_PEABFE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@peabfe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_bf_entry_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_bf* %1, %struct.mlxsw_sp_acl_atcam_region* %2, i32 %3, %struct.mlxsw_sp_acl_atcam_entry* %4) #0 {
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_bf*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_bf* %1, %struct.mlxsw_sp_acl_bf** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %2, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mlxsw_sp_acl_atcam_entry* %4, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %14 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %18 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %8, align 8
  %19 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %10, align 8
  %20 = call i32 @mlxsw_sp_acl_bf_index_get(%struct.mlxsw_sp_acl_bf* %17, %struct.mlxsw_sp_acl_atcam_region* %18, %struct.mlxsw_sp_acl_atcam_entry* %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @mlxsw_sp_acl_bf_rule_count_index_get(%struct.mlxsw_sp_acl_bf* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i64 @refcount_dec_and_test(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %5
  %34 = load i32, i32* @MLXSW_REG_PEABFE_LEN, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %57

40:                                               ; preds = %33
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @mlxsw_reg_peabfe_pack(i8* %41)
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @mlxsw_reg_peabfe_rec_pack(i8* %43, i32 0, i32 0, i32 %44, i32 %45)
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @peabfe, align 4
  %51 = call i32 @MLXSW_REG(i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @mlxsw_reg_write(i32 %49, i32 %51, i8* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @kfree(i8* %54)
  br label %56

56:                                               ; preds = %40, %5
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_bf** %7, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_bf, %struct.mlxsw_sp_acl_bf* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_index_get(%struct.mlxsw_sp_acl_bf*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_rule_count_index_get(%struct.mlxsw_sp_acl_bf*, i32, i32) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_peabfe_pack(i8*) #1

declare dso_local i32 @mlxsw_reg_peabfe_rec_pack(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
