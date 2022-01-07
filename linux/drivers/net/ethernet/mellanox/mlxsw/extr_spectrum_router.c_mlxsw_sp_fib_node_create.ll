; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_node = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8, i32 }
%struct.mlxsw_sp_fib = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fib_node* (%struct.mlxsw_sp_fib*, i8*, i64, i8)* @mlxsw_sp_fib_node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_create(%struct.mlxsw_sp_fib* %0, i8* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %6 = alloca %struct.mlxsw_sp_fib*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.mlxsw_sp_fib_node*, align 8
  store %struct.mlxsw_sp_fib* %0, %struct.mlxsw_sp_fib** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxsw_sp_fib_node* @kzalloc(i32 16, i32 %11)
  store %struct.mlxsw_sp_fib_node* %12, %struct.mlxsw_sp_fib_node** %10, align 8
  %13 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  %14 = icmp ne %struct.mlxsw_sp_fib_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.mlxsw_sp_fib_node* null, %struct.mlxsw_sp_fib_node** %5, align 8
  br label %37

16:                                               ; preds = %4
  %17 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %20, i32 0, i32 1
  %22 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %22, i32 0, i32 0
  %24 = call i32 @list_add(i32* %21, i32* %23)
  %25 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @memcpy(i32 %28, i8* %29, i64 %30)
  %32 = load i8, i8* %9, align 1
  %33 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8 %32, i8* %35, align 4
  %36 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %10, align 8
  store %struct.mlxsw_sp_fib_node* %36, %struct.mlxsw_sp_fib_node** %5, align 8
  br label %37

37:                                               ; preds = %16, %15
  %38 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  ret %struct.mlxsw_sp_fib_node* %38
}

declare dso_local %struct.mlxsw_sp_fib_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
