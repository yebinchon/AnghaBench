; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_fwd_entry = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_afa = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_afa_fwd_entry_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_fwd_entry* (%struct.mlxsw_afa*, i32)* @mlxsw_afa_fwd_entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_create(%struct.mlxsw_afa* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_afa_fwd_entry*, align 8
  %4 = alloca %struct.mlxsw_afa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_afa_fwd_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_afa_fwd_entry* @kzalloc(i32 16, i32 %8)
  store %struct.mlxsw_afa_fwd_entry* %9, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %10 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %11 = icmp ne %struct.mlxsw_afa_fwd_entry* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mlxsw_afa_fwd_entry* @ERR_PTR(i32 %14)
  store %struct.mlxsw_afa_fwd_entry* %15, %struct.mlxsw_afa_fwd_entry** %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %25, i32 0, i32 1
  %27 = load i32, i32* @mlxsw_afa_fwd_entry_ht_params, align 4
  %28 = call i32 @rhashtable_insert_fast(i32* %24, i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %57

32:                                               ; preds = %16
  %33 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %36, align 8
  %38 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %5, align 4
  %44 = call i32 %37(i32 %40, i32* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %50

48:                                               ; preds = %32
  %49 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  store %struct.mlxsw_afa_fwd_entry* %49, %struct.mlxsw_afa_fwd_entry** %3, align 8
  br label %62

50:                                               ; preds = %47
  %51 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %52 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %51, i32 0, i32 0
  %53 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %54 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %53, i32 0, i32 1
  %55 = load i32, i32* @mlxsw_afa_fwd_entry_ht_params, align 4
  %56 = call i32 @rhashtable_remove_fast(i32* %52, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %31
  %58 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %6, align 8
  %59 = call i32 @kfree(%struct.mlxsw_afa_fwd_entry* %58)
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.mlxsw_afa_fwd_entry* @ERR_PTR(i32 %60)
  store %struct.mlxsw_afa_fwd_entry* %61, %struct.mlxsw_afa_fwd_entry** %3, align 8
  br label %62

62:                                               ; preds = %57, %48, %12
  %63 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %3, align 8
  ret %struct.mlxsw_afa_fwd_entry* %63
}

declare dso_local %struct.mlxsw_afa_fwd_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_afa_fwd_entry* @ERR_PTR(i32) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_fwd_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
