; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib4_entry = type { i32, i32, i32, i32, %struct.mlxsw_sp_fib_entry }
%struct.mlxsw_sp_fib_entry = type { %struct.mlxsw_sp_fib_node* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_node = type { i32 }
%struct.fib_entry_notifier_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fib4_entry* (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.fib_entry_notifier_info*)* @mlxsw_sp_fib4_entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fib4_entry* @mlxsw_sp_fib4_entry_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_node* %1, %struct.fib_entry_notifier_info* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %7 = alloca %struct.fib_entry_notifier_info*, align 8
  %8 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  %9 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_node* %1, %struct.mlxsw_sp_fib_node** %6, align 8
  store %struct.fib_entry_notifier_info* %2, %struct.fib_entry_notifier_info** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxsw_sp_fib4_entry* @kzalloc(i32 24, i32 %11)
  store %struct.mlxsw_sp_fib4_entry* %12, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %13 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %14 = icmp ne %struct.mlxsw_sp_fib4_entry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mlxsw_sp_fib4_entry* @ERR_PTR(i32 %17)
  store %struct.mlxsw_sp_fib4_entry* %18, %struct.mlxsw_sp_fib4_entry** %4, align 8
  br label %72

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %20, i32 0, i32 4
  store %struct.mlxsw_sp_fib_entry* %21, %struct.mlxsw_sp_fib_entry** %9, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %24 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %9, align 8
  %25 = call i32 @mlxsw_sp_fib4_entry_type_set(%struct.mlxsw_sp* %22, %struct.fib_entry_notifier_info* %23, %struct.mlxsw_sp_fib_entry* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %67

29:                                               ; preds = %19
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %31 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %9, align 8
  %32 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %33 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @mlxsw_sp_nexthop4_group_get(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_fib_entry* %31, %struct.TYPE_2__* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %66

39:                                               ; preds = %29
  %40 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %41 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %48 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %53 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %58 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %63 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %9, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %63, i32 0, i32 0
  store %struct.mlxsw_sp_fib_node* %62, %struct.mlxsw_sp_fib_node** %64, align 8
  %65 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  store %struct.mlxsw_sp_fib4_entry* %65, %struct.mlxsw_sp_fib4_entry** %4, align 8
  br label %72

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %66, %28
  %68 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %69 = call i32 @kfree(%struct.mlxsw_sp_fib4_entry* %68)
  %70 = load i32, i32* %10, align 4
  %71 = call %struct.mlxsw_sp_fib4_entry* @ERR_PTR(i32 %70)
  store %struct.mlxsw_sp_fib4_entry* %71, %struct.mlxsw_sp_fib4_entry** %4, align 8
  br label %72

72:                                               ; preds = %67, %39, %15
  %73 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %4, align 8
  ret %struct.mlxsw_sp_fib4_entry* %73
}

declare dso_local %struct.mlxsw_sp_fib4_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_fib4_entry* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_fib4_entry_type_set(%struct.mlxsw_sp*, %struct.fib_entry_notifier_info*, %struct.mlxsw_sp_fib_entry*) #1

declare dso_local i32 @mlxsw_sp_nexthop4_group_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fib4_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
