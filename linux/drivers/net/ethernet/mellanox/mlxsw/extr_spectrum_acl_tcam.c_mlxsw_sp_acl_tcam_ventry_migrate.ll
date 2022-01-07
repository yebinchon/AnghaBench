; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_ventry = type { %struct.mlxsw_sp_acl_tcam_entry* }
%struct.mlxsw_sp_acl_tcam_entry = type { %struct.mlxsw_sp_acl_tcam_chunk* }
%struct.mlxsw_sp_acl_tcam_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_chunk*, i32*)* @mlxsw_sp_acl_tcam_ventry_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_tcam_ventry_migrate(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_chunk* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_tcam_ventry*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_tcam_chunk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_tcam_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_ventry** %7, align 8
  store %struct.mlxsw_sp_acl_tcam_chunk* %2, %struct.mlxsw_sp_acl_tcam_chunk** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %12, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_entry, %struct.mlxsw_sp_acl_tcam_entry* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %14, align 8
  %16 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %8, align 8
  %17 = icmp eq %struct.mlxsw_sp_acl_tcam_chunk* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %45

25:                                               ; preds = %19
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %27 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %7, align 8
  %28 = load %struct.mlxsw_sp_acl_tcam_chunk*, %struct.mlxsw_sp_acl_tcam_chunk** %8, align 8
  %29 = call %struct.mlxsw_sp_acl_tcam_entry* @mlxsw_sp_acl_tcam_entry_create(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_acl_tcam_ventry* %27, %struct.mlxsw_sp_acl_tcam_chunk* %28)
  store %struct.mlxsw_sp_acl_tcam_entry* %29, %struct.mlxsw_sp_acl_tcam_entry** %10, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %10, align 8
  %31 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_entry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_entry* %34)
  store i32 %35, i32* %5, align 4
  br label %45

36:                                               ; preds = %25
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %38 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %7, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %38, i32 0, i32 0
  %40 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %39, align 8
  %41 = call i32 @mlxsw_sp_acl_tcam_entry_destroy(%struct.mlxsw_sp* %37, %struct.mlxsw_sp_acl_tcam_entry* %40)
  %42 = load %struct.mlxsw_sp_acl_tcam_entry*, %struct.mlxsw_sp_acl_tcam_entry** %10, align 8
  %43 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %7, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %43, i32 0, i32 0
  store %struct.mlxsw_sp_acl_tcam_entry* %42, %struct.mlxsw_sp_acl_tcam_entry** %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %36, %33, %24, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.mlxsw_sp_acl_tcam_entry* @mlxsw_sp_acl_tcam_entry_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_chunk*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_tcam_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_tcam_entry*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
