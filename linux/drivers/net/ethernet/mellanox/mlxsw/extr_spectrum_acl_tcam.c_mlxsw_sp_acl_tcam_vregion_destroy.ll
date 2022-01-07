; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_vregion_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i64 }
%struct.mlxsw_sp_acl_tcam_vregion = type { i32, i32, i64, i64, %struct.TYPE_2__, i32, %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam_vgroup* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_tcam = type { i32 }
%struct.mlxsw_sp_acl_tcam_vgroup = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*)* @mlxsw_sp_acl_tcam_vregion_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_vregion_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_vregion* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_vgroup*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %1, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %10, %struct.mlxsw_sp_acl_tcam_ops** %5, align 8
  %11 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %11, i32 0, i32 7
  %13 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %12, align 8
  store %struct.mlxsw_sp_acl_tcam_vgroup* %13, %struct.mlxsw_sp_acl_tcam_vgroup** %6, align 8
  %14 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %14, i32 0, i32 6
  %16 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %15, align 8
  store %struct.mlxsw_sp_acl_tcam* %16, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %17 = load %struct.mlxsw_sp_acl_tcam_vgroup*, %struct.mlxsw_sp_acl_tcam_vgroup** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vgroup, %struct.mlxsw_sp_acl_tcam_vgroup* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %30, i32 0, i32 5
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %7, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam, %struct.mlxsw_sp_acl_tcam* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @cancel_delayed_work_sync(i32* %38)
  br label %40

40:                                               ; preds = %26, %21, %2
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %42 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %43 = call i32 @mlxsw_sp_acl_tcam_vgroup_vregion_detach(%struct.mlxsw_sp* %41, %struct.mlxsw_sp_acl_tcam_vregion* %42)
  %44 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %50 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %56 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp* %55, i64 %58)
  %60 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mlxsw_afk_key_info_put(i32 %62)
  %64 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %64, i32 0, i32 0
  %66 = call i32 @mutex_destroy(i32* %65)
  %67 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %4, align 8
  %68 = call i32 @kfree(%struct.mlxsw_sp_acl_tcam_vregion* %67)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vgroup_vregion_detach(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vregion*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_region_destroy(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_afk_key_info_put(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_tcam_vregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
