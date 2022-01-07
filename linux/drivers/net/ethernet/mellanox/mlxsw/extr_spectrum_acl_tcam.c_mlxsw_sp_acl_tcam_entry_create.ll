; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_entry = type { i32, %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_ventry* }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_acl_tcam_ops* }
%struct.mlxsw_sp_acl_tcam_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, i32, i32)*, i64 }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_acl_tcam_ventry = type { i32 }
%struct.mlxsw_sp_acl_tcam_chunk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_acl_tcam_entry* (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_chunk*)* @mlxsw_sp_acl_tcam_entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_acl_tcam_entry* @mlxsw_sp_acl_tcam_entry_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_chunk* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_tcam_entry*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_ventry*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_chunk*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_tcam_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_ventry** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_chunk* %2, %struct.mlxsw_sp_acl_tcam_chunk** %7, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %12, align 8
  store %struct.mlxsw_sp_acl_tcam_ops* %13, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %14 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 24, %16
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlxsw_sp_acl_tcam_entry* @kzalloc(i64 %17, i32 %18)
  store %struct.mlxsw_sp_acl_tcam_entry* %19, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %20 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %21 = icmp ne %struct.mlxsw_sp_acl_tcam_entry* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mlxsw_sp_acl_tcam_entry* @ERR_PTR(i32 %24)
  store %struct.mlxsw_sp_acl_tcam_entry* %25, %struct.mlxsw_sp_acl_tcam_entry** %4, align 8
  br label %63

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %6, align 8
  %28 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %28, i32 0, i32 2
  store %struct.mlxsw_sp_acl_tcam_ventry* %27, %struct.mlxsw_sp_acl_tcam_ventry** %29, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %7, align 8
  %31 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %31, i32 0, i32 1
  store %struct.mlxsw_sp_acl_tcam_chunk* %30, %struct.mlxsw_sp_acl_tcam_chunk** %32, align 8
  %33 = load %struct.mlxsw_sp_acl_tcam_ops*, %struct.mlxsw_sp_acl_tcam_ops** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ops, %struct.mlxsw_sp_acl_tcam_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.mlxsw_sp.0*, i32, i32, i32, i32)*, i32 (%struct.mlxsw_sp.0*, i32, i32, i32, i32)** %34, align 8
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = bitcast %struct.mlxsw_sp* %36 to %struct.mlxsw_sp.0*
  %38 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, %struct.mlxsw_sp_acl_tcam_chunk* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %7, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_chunk, %struct.mlxsw_sp_acl_tcam_chunk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %6, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %35(%struct.mlxsw_sp.0* %37, i32 %42, i32 %45, i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %26
  br label %58

56:                                               ; preds = %26
  %57 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  store %struct.mlxsw_sp_acl_tcam_entry* %57, %struct.mlxsw_sp_acl_tcam_entry** %4, align 8
  br label %63

58:                                               ; preds = %55
  %59 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %9, align 8
  %60 = call i32 @kfree(%struct.mlxsw_sp_acl_tcam_entry* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.mlxsw_sp_acl_tcam_entry* @ERR_PTR(i32 %61)
  store %struct.mlxsw_sp_acl_tcam_entry* %62, %struct.mlxsw_sp_acl_tcam_entry** %4, align 8
  br label %63

63:                                               ; preds = %58, %56, %22
  %64 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %4, align 8
  ret %struct.mlxsw_sp_acl_tcam_entry* %64
}

declare dso_local %struct.mlxsw_sp_acl_tcam_entry* @kzalloc(i64, i32) #1

declare dso_local %struct.mlxsw_sp_acl_tcam_entry* @ERR_PTR(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_acl_tcam_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
