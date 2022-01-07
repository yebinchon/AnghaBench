; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i32 }
%struct.mlxsw_sp_acl_tcam_ventry = type { i32, %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_tcam_vchunk* }
%struct.mlxsw_sp_acl_tcam_vchunk = type { i32, i32, %struct.mlxsw_sp_acl_tcam_vregion* }
%struct.mlxsw_sp_acl_tcam_vregion = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_rule_info*)* @mlxsw_sp_acl_tcam_ventry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_ventry_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_ventry* %2, %struct.mlxsw_sp_acl_rule_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_ventry*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %1, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_ventry* %2, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  store %struct.mlxsw_sp_acl_rule_info* %3, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %14 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %7, align 8
  %15 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_get(%struct.mlxsw_sp* %13, %struct.mlxsw_sp_acl_tcam_vgroup* %14, i32 %17, i32* %20)
  store %struct.mlxsw_sp_acl_tcam_vchunk* %21, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %22 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %23 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vchunk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %27 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vchunk* %26)
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %30, i32 0, i32 3
  store %struct.mlxsw_sp_acl_tcam_vchunk* %29, %struct.mlxsw_sp_acl_tcam_vchunk** %31, align 8
  %32 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %9, align 8
  %33 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %33, i32 0, i32 2
  store %struct.mlxsw_sp_acl_rule_info* %32, %struct.mlxsw_sp_acl_rule_info** %34, align 8
  %35 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %35, i32 0, i32 2
  %37 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %36, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %37, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %38 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %42 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %43 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_entry_create(%struct.mlxsw_sp* %41, %struct.mlxsw_sp_acl_tcam_ventry* %42, i32 %45)
  %47 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %47, i32 0, i32 1
  store %struct.mlxsw_sp_acl_tcam_vchunk* %46, %struct.mlxsw_sp_acl_tcam_vchunk** %48, align 8
  %49 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %49, i32 0, i32 1
  %51 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %50, align 8
  %52 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vchunk* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %28
  %55 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %58, i32 0, i32 1
  %60 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %59, align 8
  %61 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vchunk* %60)
  store i32 %61, i32* %12, align 4
  br label %73

62:                                               ; preds = %28
  %63 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %8, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %63, i32 0, i32 0
  %65 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %69 = call i32 @mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(%struct.mlxsw_sp_acl_tcam_vchunk* %68)
  %70 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %10, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  store i32 0, i32* %5, align 4
  br label %78

73:                                               ; preds = %54
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %75 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %11, align 8
  %76 = call i32 @mlxsw_sp_acl_tcam_vchunk_put(%struct.mlxsw_sp* %74, %struct.mlxsw_sp_acl_tcam_vchunk* %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %62, %25
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_vchunk_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vgroup*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_vchunk*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_vchunk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_vchunk* @mlxsw_sp_acl_tcam_entry_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(%struct.mlxsw_sp_acl_tcam_vchunk*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vchunk_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
