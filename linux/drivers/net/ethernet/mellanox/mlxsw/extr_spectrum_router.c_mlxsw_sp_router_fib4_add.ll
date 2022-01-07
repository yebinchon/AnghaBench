; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib4_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib4_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.fib_entry_notifier_info = type { i32, i32, i32 }
%struct.mlxsw_sp_fib4_entry = type opaque
%struct.mlxsw_sp_fib_node = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to get FIB node\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to create FIB entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to link FIB entry to node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.fib_entry_notifier_info*, i32, i32)* @mlxsw_sp_router_fib4_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_fib4_add(%struct.mlxsw_sp* %0, %struct.fib_entry_notifier_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.fib_entry_notifier_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  %11 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.fib_entry_notifier_info* %1, %struct.fib_entry_notifier_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %96

20:                                               ; preds = %4
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %22 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %23 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %26 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %25, i32 0, i32 1
  %27 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %28 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %31 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_get(%struct.mlxsw_sp* %21, i32 %24, i32* %26, i32 4, i32 %29, i32 %30)
  store %struct.mlxsw_sp_fib_node* %31, %struct.mlxsw_sp_fib_node** %11, align 8
  %32 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %33 = call i64 @IS_ERR(%struct.mlxsw_sp_fib_node* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %43 = call i32 @PTR_ERR(%struct.mlxsw_sp_fib_node* %42)
  store i32 %43, i32* %5, align 4
  br label %96

44:                                               ; preds = %20
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %46 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %47 = load %struct.fib_entry_notifier_info*, %struct.fib_entry_notifier_info** %7, align 8
  %48 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib4_entry_create(%struct.mlxsw_sp* %45, %struct.mlxsw_sp_fib_node* %46, %struct.fib_entry_notifier_info* %47)
  %49 = bitcast %struct.mlxsw_sp_fib_node* %48 to %struct.mlxsw_sp_fib4_entry*
  store %struct.mlxsw_sp_fib4_entry* %49, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %50 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %51 = bitcast %struct.mlxsw_sp_fib4_entry* %50 to %struct.mlxsw_sp_fib_node*
  %52 = call i64 @IS_ERR(%struct.mlxsw_sp_fib_node* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %62 = bitcast %struct.mlxsw_sp_fib4_entry* %61 to %struct.mlxsw_sp_fib_node*
  %63 = call i32 @PTR_ERR(%struct.mlxsw_sp_fib_node* %62)
  store i32 %63, i32* %12, align 4
  br label %91

64:                                               ; preds = %44
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %66 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %67 = bitcast %struct.mlxsw_sp_fib4_entry* %66 to %struct.mlxsw_sp_fib_node*
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mlxsw_sp_fib4_node_entry_link(%struct.mlxsw_sp* %65, %struct.mlxsw_sp_fib_node* %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %86

80:                                               ; preds = %64
  %81 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %82 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %83 = bitcast %struct.mlxsw_sp_fib4_entry* %82 to %struct.mlxsw_sp_fib_node*
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @mlxsw_sp_fib4_entry_replace(%struct.mlxsw_sp* %81, %struct.mlxsw_sp_fib_node* %83, i32 %84)
  store i32 0, i32* %5, align 4
  br label %96

86:                                               ; preds = %73
  %87 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %88 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %10, align 8
  %89 = bitcast %struct.mlxsw_sp_fib4_entry* %88 to %struct.mlxsw_sp_fib_node*
  %90 = call i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp* %87, %struct.mlxsw_sp_fib_node* %89)
  br label %91

91:                                               ; preds = %86, %54
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %93 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %94 = call i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp* %92, %struct.mlxsw_sp_fib_node* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %80, %35, %19
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_get(%struct.mlxsw_sp*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_fib_node*) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib4_entry_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.fib_entry_notifier_info*) #1

declare dso_local i32 @mlxsw_sp_fib4_node_entry_link(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fib4_entry_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, i32) #1

declare dso_local i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
