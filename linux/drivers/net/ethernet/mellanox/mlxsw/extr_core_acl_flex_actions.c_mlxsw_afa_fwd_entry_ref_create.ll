; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_ref_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_ref_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_fwd_entry_ref = type { %struct.TYPE_2__, %struct.mlxsw_afa_fwd_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_afa_fwd_entry = type { i32 }
%struct.mlxsw_afa_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_afa_fwd_entry_ref_destructor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_fwd_entry_ref* (%struct.mlxsw_afa_block*, i32)* @mlxsw_afa_fwd_entry_ref_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_fwd_entry_ref* @mlxsw_afa_fwd_entry_ref_create(%struct.mlxsw_afa_block* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_afa_fwd_entry_ref*, align 8
  %4 = alloca %struct.mlxsw_afa_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_afa_fwd_entry_ref*, align 8
  %7 = alloca %struct.mlxsw_afa_fwd_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mlxsw_afa_fwd_entry_ref* @kzalloc(i32 16, i32 %9)
  store %struct.mlxsw_afa_fwd_entry_ref* %10, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %11 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %12 = icmp ne %struct.mlxsw_afa_fwd_entry_ref* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mlxsw_afa_fwd_entry_ref* @ERR_PTR(i32 %15)
  store %struct.mlxsw_afa_fwd_entry_ref* %16, %struct.mlxsw_afa_fwd_entry_ref** %3, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_get(i32 %20, i32 %21)
  store %struct.mlxsw_afa_fwd_entry* %22, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %23 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %24 = call i64 @IS_ERR(%struct.mlxsw_afa_fwd_entry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.mlxsw_afa_fwd_entry* %27)
  store i32 %28, i32* %8, align 4
  br label %42

29:                                               ; preds = %17
  %30 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %31 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry_ref, %struct.mlxsw_afa_fwd_entry_ref* %31, i32 0, i32 1
  store %struct.mlxsw_afa_fwd_entry* %30, %struct.mlxsw_afa_fwd_entry** %32, align 8
  %33 = load i32, i32* @mlxsw_afa_fwd_entry_ref_destructor, align 4
  %34 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry_ref, %struct.mlxsw_afa_fwd_entry_ref* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %38 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry_ref, %struct.mlxsw_afa_fwd_entry_ref* %38, i32 0, i32 0
  %40 = call i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block* %37, %struct.TYPE_2__* %39)
  %41 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  store %struct.mlxsw_afa_fwd_entry_ref* %41, %struct.mlxsw_afa_fwd_entry_ref** %3, align 8
  br label %47

42:                                               ; preds = %26
  %43 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %6, align 8
  %44 = call i32 @kfree(%struct.mlxsw_afa_fwd_entry_ref* %43)
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.mlxsw_afa_fwd_entry_ref* @ERR_PTR(i32 %45)
  store %struct.mlxsw_afa_fwd_entry_ref* %46, %struct.mlxsw_afa_fwd_entry_ref** %3, align 8
  br label %47

47:                                               ; preds = %42, %29, %13
  %48 = load %struct.mlxsw_afa_fwd_entry_ref*, %struct.mlxsw_afa_fwd_entry_ref** %3, align 8
  ret %struct.mlxsw_afa_fwd_entry_ref* %48
}

declare dso_local %struct.mlxsw_afa_fwd_entry_ref* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa_fwd_entry_ref* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_fwd_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_fwd_entry*) #1

declare dso_local i32 @mlxsw_afa_resource_add(%struct.mlxsw_afa_block*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_fwd_entry_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
