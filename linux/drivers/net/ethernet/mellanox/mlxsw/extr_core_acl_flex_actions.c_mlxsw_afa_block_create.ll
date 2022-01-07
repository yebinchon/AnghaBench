; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.mlxsw_afa*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.mlxsw_afa = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_afa_block* @mlxsw_afa_block_create(%struct.mlxsw_afa* %0) #0 {
  %2 = alloca %struct.mlxsw_afa_block*, align 8
  %3 = alloca %struct.mlxsw_afa*, align 8
  %4 = alloca %struct.mlxsw_afa_block*, align 8
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mlxsw_afa_block* @kzalloc(i32 32, i32 %5)
  store %struct.mlxsw_afa_block* %6, %struct.mlxsw_afa_block** %4, align 8
  %7 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %8 = icmp ne %struct.mlxsw_afa_block* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mlxsw_afa_block* null, %struct.mlxsw_afa_block** %2, align 8
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %11, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %3, align 8
  %15 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %15, i32 0, i32 2
  store %struct.mlxsw_afa* %14, %struct.mlxsw_afa** %16, align 8
  %17 = call i8* @mlxsw_afa_set_create(i32 1)
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  %19 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %19, i32 0, i32 0
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  br label %71

26:                                               ; preds = %10
  %27 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = call i8* @mlxsw_afa_set_create(i32 0)
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  %36 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %66

43:                                               ; preds = %33
  %44 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %48 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %52 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %55 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %57, align 8
  br label %64

58:                                               ; preds = %26
  %59 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %60 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %63 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %62, i32 0, i32 1
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  br label %64

64:                                               ; preds = %58, %43
  %65 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  store %struct.mlxsw_afa_block* %65, %struct.mlxsw_afa_block** %2, align 8
  br label %74

66:                                               ; preds = %42
  %67 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %68 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @mlxsw_afa_set_destroy(%struct.TYPE_4__* %69)
  br label %71

71:                                               ; preds = %66, %25
  %72 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %73 = call i32 @kfree(%struct.mlxsw_afa_block* %72)
  store %struct.mlxsw_afa_block* null, %struct.mlxsw_afa_block** %2, align 8
  br label %74

74:                                               ; preds = %71, %64, %9
  %75 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %2, align 8
  ret %struct.mlxsw_afa_block* %75
}

declare dso_local %struct.mlxsw_afa_block* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @mlxsw_afa_set_create(i32) #1

declare dso_local i32 @mlxsw_afa_set_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
